.class Lcom/sun/javafx/font/FontFileWriter;
.super Ljava/lang/Object;
.source "FontFileWriter.java"

# interfaces
.implements Lcom/sun/javafx/font/FontConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    }
.end annotation


# instance fields
.field file:Ljava/io/File;

.field header:[B

.field headerPos:I

.field pos:I

.field raFile:Ljava/io/RandomAccessFile;

.field tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

.field writtenBytes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter;->hasTempPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getTracker()Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter;->lambda$openFile$231()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/font/FontFileWriter;)Ljava/io/RandomAccessFile;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileWriter;->lambda$openFile$232()Ljava/io/RandomAccessFile;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/font/FontFileWriter;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileWriter;->lambda$deleteFile$233()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private checkSize(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/font/FontFileWriter;->checkTracker(I)V

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->addBytes(I)V

    .line 171
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/font/FontFileWriter;->writtenBytes:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/font/FontFileWriter;->writtenBytes:I

    .line 173
    :cond_0
    return-void
.end method

.method private checkTracker(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v2, :cond_2

    .line 158
    move v2, v1

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    const/high16 v3, 0x2000000

    move v4, v1

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 159
    :cond_0
    new-instance v2, Ljava/io/IOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "File too big."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    invoke-virtual {v2}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getNumBytes()I

    move-result v2

    const/high16 v3, 0x14000000

    move v4, v1

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 162
    new-instance v2, Ljava/io/IOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Total files too big."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_2
    return-void
.end method

.method static hasTempPermission()Z
    .locals 6

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 257
    const/4 v3, 0x1

    move v0, v3

    .line 269
    .local v1, "hasPerm":Z
    :goto_0
    return v0

    .line 259
    .end local v1    # "hasPerm":Z
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 260
    .local v0, "f":Ljava/io/File;
    const/4 v3, 0x0

    move v1, v3

    .line 262
    .restart local v1    # "hasPerm":Z
    :try_start_0
    const-string v3, "+JXF"

    const-string v4, ".tmp"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 263
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 264
    const/4 v3, 0x0

    move-object v0, v3

    .line 265
    const/4 v3, 0x1

    move v1, v3

    .line 268
    .line 269
    :goto_1
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 266
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method

.method private synthetic lambda$deleteFile$233()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 139
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    return-object v0
.end method

.method private static synthetic lambda$openFile$231()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    const-string v1, "+JXF"

    const-string v2, ".tmp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unable to create temporary file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic lambda$openFile$232()Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    new-instance v1, Ljava/io/RandomAccessFile;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    return-object v0
.end method

.method private setHeaderPos(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    .line 177
    return-void
.end method

.method private writeInt(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    const/16 v5, 0x18

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 230
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 231
    return-void
.end method

.method private writeShort(S)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "value":S
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->headerPos:I

    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 236
    return-void
.end method


# virtual methods
.method public closeFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 115
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    .line 117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 119
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    .line 121
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v1, :cond_2

    .line 122
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->remove(Ljava/io/File;)V

    .line 124
    :cond_2
    return-void
.end method

.method public deleteFile()V
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/font/FontFileWriter;->writtenBytes:I

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->subBytes(I)V

    .line 132
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/javafx/font/FontFileWriter;->closeFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 136
    :goto_0
    move-object v2, v0

    :try_start_1
    invoke-static {v2}, Lcom/sun/javafx/font/FontFileWriter$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/font/FontFileWriter;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_1

    .line 143
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temp file delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    :cond_1
    :goto_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    .line 148
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    .line 150
    :cond_2
    return-void

    .line 133
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 145
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    return-object v0
.end method

.method public isTracking()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    .line 85
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/font/FontFileWriter;->writtenBytes:I

    .line 86
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedExceptionAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    .line 96
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->add(Ljava/io/File;)V

    .line 99
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/font/FontFileWriter$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/font/FontFileWriter;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->set(Ljava/io/File;Ljava/io/RandomAccessFile;)V

    .line 105
    :cond_1
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v1, :cond_2

    .line 106
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp file created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileWriter;->file:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter;
    return-object v0
.end method

.method public seek(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v2, p1

    .local v2, "pos":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    .line 71
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "File not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_0
    move v3, v2

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    if-eq v3, v4, :cond_1

    .line 74
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 75
    move-object v3, v1

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    .line 77
    :cond_1
    return-void
.end method

.method protected setLength(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v2, p1

    .local v2, "size":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "File not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/font/FontFileWriter;->checkTracker(I)V

    .line 66
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 67
    return-void
.end method

.method public writeBytes([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, p1

    .local v1, "buffer":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/font/FontFileWriter;->writeBytes([BII)V

    .line 240
    return-void
.end method

.method public writeBytes([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move-object v1, p1

    .local v1, "buffer":[B
    move v2, p2

    .local v2, "startPos":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/font/FontFileWriter;->checkSize(I)V

    .line 246
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileWriter;->raFile:Ljava/io/RandomAccessFile;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 247
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/font/FontFileWriter;->pos:I

    .line 248
    return-void
.end method

.method public writeDirectoryEntry(IIIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "tag":I
    move v3, p3

    .local v3, "checksum":I
    move v4, p4

    .local v4, "offset":I
    move v5, p5

    .local v5, "length":I
    move-object v6, v0

    const/16 v7, 0xc

    const/16 v8, 0x10

    move v9, v1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/FontFileWriter;->setHeaderPos(I)V

    .line 220
    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/FontFileWriter;->writeInt(I)V

    .line 221
    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/FontFileWriter;->writeInt(I)V

    .line 222
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/FontFileWriter;->writeInt(I)V

    .line 223
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/FontFileWriter;->writeInt(I)V

    .line 224
    return-void
.end method

.method public writeHeader(IS)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter;
    move v1, p1

    .local v1, "format":I
    move v2, p2

    .local v2, "numTables":S
    const/16 v8, 0xc

    const/16 v9, 0x10

    move v10, v2

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 184
    .local v3, "size":I
    move-object v8, v0

    move v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->checkSize(I)V

    .line 185
    move-object v8, v0

    move v9, v3

    new-array v9, v9, [B

    iput-object v9, v8, Lcom/sun/javafx/font/FontFileWriter;->header:[B

    .line 192
    move v8, v2

    move v4, v8

    .line 193
    .local v4, "maxPower2":S
    move v8, v4

    move v9, v4

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    or-int/2addr v8, v9

    int-to-short v8, v8

    move v4, v8

    .line 194
    move v8, v4

    move v9, v4

    const/4 v10, 0x2

    shr-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    int-to-short v8, v8

    move v4, v8

    .line 195
    move v8, v4

    move v9, v4

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-short v8, v8

    move v4, v8

    .line 196
    move v8, v4

    move v9, v4

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v8, v8

    move v4, v8

    .line 199
    move v8, v4

    move v9, v4

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    int-to-short v8, v8

    move v4, v8

    .line 200
    move v8, v4

    const/16 v9, 0x10

    mul-int/lit8 v8, v8, 0x10

    int-to-short v8, v8

    move v5, v8

    .line 201
    .local v5, "searchRange":S
    const/4 v8, 0x0

    move v6, v8

    .line 202
    .local v6, "entrySelector":S
    :goto_0
    move v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 203
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move v6, v8

    .line 204
    move v8, v4

    const/4 v9, 0x1

    shr-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move v4, v8

    goto :goto_0

    .line 206
    :cond_0
    move v8, v2

    const/16 v9, 0x10

    mul-int/lit8 v8, v8, 0x10

    move v9, v5

    sub-int/2addr v8, v9

    int-to-short v8, v8

    move v7, v8

    .line 208
    .local v7, "rangeShift":S
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->setHeaderPos(I)V

    .line 209
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->writeInt(I)V

    .line 210
    move-object v8, v0

    move v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->writeShort(S)V

    .line 211
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->writeShort(S)V

    .line 212
    move-object v8, v0

    move v9, v6

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->writeShort(S)V

    .line 213
    move-object v8, v0

    move v9, v7

    invoke-direct {v8, v9}, Lcom/sun/javafx/font/FontFileWriter;->writeShort(S)V

    .line 214
    return-void
.end method
