import { useCallback, useState } from 'react';
import { useDropzone } from 'react-dropzone';
import { Upload, X, File as FileIcon, Image as ImageIcon, Video } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { motion, AnimatePresence } from 'framer-motion';

interface FileUploadProps {
  accept?: string;
  maxSize?: number;
  onFileSelect: (file: File) => void;
  currentFile?: File | string;
  onRemove?: () => void;
  label?: string;
  description?: string;
}

export function FileUpload({
  accept = 'image/*,video/*',
  maxSize = 10485760,
  onFileSelect,
  currentFile,
  onRemove,
  label = 'Upload File',
  description = 'Drag and drop or click to browse',
}: FileUploadProps) {
  const [preview, setPreview] = useState<string | null>(null);
  const [dataUrl, setDataUrl] = useState<string | null>(null);

  const onDrop = useCallback(
    (acceptedFiles: File[]) => {
      if (acceptedFiles.length > 0) {
        const file = acceptedFiles[0];
        
        if (file.type.startsWith('image/')) {
          const reader = new FileReader();
          reader.onload = () => {
            const result = reader.result as string;
            setPreview(result);
            setDataUrl(result);
            // Create a custom file-like object with the data URL
            const fileWithDataUrl = Object.assign(file, { dataUrl: result });
            onFileSelect(fileWithDataUrl as any);
          };
          reader.readAsDataURL(file);
        } else if (file.type.startsWith('video/')) {
          const url = URL.createObjectURL(file);
          setPreview(url);
          const reader = new FileReader();
          reader.onload = () => {
            const result = reader.result as string;
            setDataUrl(result);
            const fileWithDataUrl = Object.assign(file, { dataUrl: result });
            onFileSelect(fileWithDataUrl as any);
          };
          reader.readAsDataURL(file);
        } else {
          onFileSelect(file);
        }
      }
    },
    [onFileSelect]
  );

  const { getRootProps, getInputProps, isDragActive } = useDropzone({
    onDrop,
    accept: accept.split(',').reduce((acc, type) => ({ ...acc, [type.trim()]: [] }), {}),
    maxSize,
    multiple: false,
  });

  const handleRemove = () => {
    setPreview(null);
    setDataUrl(null);
    if (onRemove) onRemove();
  };

  const getFileIcon = () => {
    if (!currentFile) return <Upload className="h-12 w-12 text-muted-foreground" />;

    const fileType = typeof currentFile === 'string' ? currentFile : (currentFile as any).type || '';

    if (fileType.includes('image')) return <ImageIcon className="h-12 w-12 text-primary" />;
    if (fileType.includes('video')) return <Video className="h-12 w-12 text-primary" />;
    return <FileIcon className="h-12 w-12 text-primary" />;
  };

  const isFileObject = currentFile && typeof currentFile === 'object' && 'name' in (currentFile as any);
  const fileName = isFileObject ? (currentFile as any).name : null;
  const hasFile = !!(currentFile || preview);

  return (
    <div className="space-y-2">
      <label className="text-sm font-medium">{label}</label>
      
      <AnimatePresence mode="wait">
        {hasFile && (preview || typeof currentFile === 'string') ? (
          <motion.div
            key="preview"
            initial={{ opacity: 0, scale: 0.95 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.95 }}
            className="relative rounded-lg border-2 border-border overflow-hidden"
          >
            {((currentFile instanceof File && currentFile.type.startsWith('image/')) || 
              (typeof currentFile === 'string' && currentFile.match(/\.(jpg|jpeg|png|gif|webp)$/i))) && (
              <img
                src={preview || (typeof currentFile === 'string' ? currentFile : '')}
                alt="Preview"
                className="w-full h-64 object-cover"
              />
            )}
            
            {((currentFile instanceof File && currentFile.type.startsWith('video/')) || 
              (typeof currentFile === 'string' && currentFile.match(/\.(mp4|webm|ogg)$/i))) && (
              <video
                src={preview || (typeof currentFile === 'string' ? currentFile : '')}
                controls
                className="w-full h-64"
              />
            )}

            <Button
              size="icon"
              variant="destructive"
              className="absolute top-2 right-2"
              onClick={handleRemove}
              data-testid="button-remove-file"
            >
              <X className="h-4 w-4" />
            </Button>

            {fileName && (
              <div className="absolute bottom-0 left-0 right-0 bg-background/90 backdrop-blur p-2">
                <p className="text-sm font-medium truncate">{fileName}</p>
              </div>
            )}
          </motion.div>
        ) : (
          <motion.div
            key="upload"
            initial={{ opacity: 0, scale: 0.95 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.95 }}
          >
            <div
              {...getRootProps()}
              className={`
                border-2 border-dashed rounded-lg p-12 text-center cursor-pointer
                transition-all duration-200 hover-elevate active-elevate-2
                ${isDragActive ? 'border-primary bg-primary/5' : 'border-border'}
              `}
              data-testid="dropzone-file-upload"
            >
              <input {...getInputProps()} data-testid="input-file-upload" />
              <div className="flex flex-col items-center gap-4">
                {getFileIcon()}
                <div>
                  <p className="font-medium">
                    {isDragActive ? 'Drop file here' : description}
                  </p>
                  <p className="text-sm text-muted-foreground mt-1">
                    Maximum file size: {(maxSize / 1024 / 1024).toFixed(0)}MB
                  </p>
                </div>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
