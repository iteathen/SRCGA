.class Lcom/sun/javafx/font/FontFileReader;
.super Ljava/lang/Object;
.source "FontFileReader.java"

# interfaces
.implements Lcom/sun/javafx/font/FontConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/FontFileReader$Buffer;
    }
.end annotation


# static fields
.field private static final READBUFFERSIZE:I = 0x400


# instance fields
.field filename:Ljava/lang/String;

.field filesize:J

.field raFile:Ljava/io/RandomAccessFile;

.field private readBuffer:[B

.field private readBufferLen:I

.field private readBufferStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/font/FontFileReader;->filename:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/font/FontFileReader;)Ljava/io/RandomAccessFile;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileReader;->lambda$openFile$224()Ljava/io/RandomAccessFile;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$openFile$224()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader;->filename:Ljava/lang/String;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 66
    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 66
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private declared-synchronized readFromFile([BJI)I
    .locals 12

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v1, p1

    .local v1, "buffer":[B
    move-wide v2, p2

    .local v2, "seekPos":J
    move/from16 v4, p4

    .local v4, "requestedLen":I
    move-object v10, p0

    monitor-enter v10

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v5, v6

    .line 207
    .local v5, "bytesRead":I
    move v6, v5

    move v0, v6

    .line 212
    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    .end local v5    # "bytesRead":I
    :goto_0
    monitor-exit v10

    return v0

    .line 208
    .restart local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 209
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    sget-boolean v6, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v6, :cond_0

    .line 210
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 204
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v0
.end method


# virtual methods
.method public declared-synchronized closeFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 83
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v3

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    return-object v0
.end method

.method public declared-synchronized getLength()J
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lcom/sun/javafx/font/FontFileReader;->filesize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    monitor-exit v3

    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v0
.end method

.method public declared-synchronized openFile()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x0

    move v1, v3

    .line 77
    .end local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    :goto_0
    monitor-exit v6

    return v1

    .line 61
    .restart local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    :cond_0
    move-object v3, v1

    move-object v4, v1

    :try_start_1
    invoke-static {v4}, Lcom/sun/javafx/font/FontFileReader$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/font/FontFileReader;)Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/RandomAccessFile;

    iput-object v4, v3, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    .line 70
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 72
    move-object v3, v1

    move-object v4, v1

    :try_start_2
    iget-object v4, v4, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/font/FontFileReader;->filesize:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v1
.end method

.method public declared-synchronized readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;
    .locals 12

    .prologue
    .line 233
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/FontFileReader;
    move v2, p1

    .local v2, "offset":I
    move v3, p2

    .local v3, "len":I
    move-object v10, p0

    monitor-enter v10

    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B

    if-nez v5, :cond_0

    .line 234
    move-object v5, v1

    const/16 v6, 0x400

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B

    .line 235
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/font/FontFileReader;->readBufferLen:I

    .line 238
    :cond_0
    move v5, v3

    const/16 v6, 0x400

    if-gt v5, v6, :cond_3

    .line 239
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader;->readBufferStart:I

    move v6, v2

    if-gt v5, v6, :cond_1

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/font/FontFileReader;->readBufferStart:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/FontFileReader;->readBufferLen:I

    add-int/2addr v5, v6

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_1

    .line 242
    new-instance v5, Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B

    move v8, v2

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/font/FontFileReader;->readBufferStart:I

    sub-int/2addr v8, v9

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    .line 253
    .end local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    :goto_0
    monitor-exit v10

    return-object v1

    .line 244
    .restart local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    :cond_1
    move-object v5, v1

    move v6, v2

    :try_start_1
    iput v6, v5, Lcom/sun/javafx/font/FontFileReader;->readBufferStart:I

    .line 245
    move-object v5, v1

    move v6, v2

    const/16 v7, 0x400

    add-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/font/FontFileReader;->filesize:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/font/FontFileReader;->filesize:J

    long-to-int v6, v6

    move v7, v2

    sub-int/2addr v6, v7

    :goto_1
    iput v6, v5, Lcom/sun/javafx/font/FontFileReader;->readBufferLen:I

    .line 247
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/font/FontFileReader;->readBufferStart:I

    int-to-long v7, v7

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/font/FontFileReader;->readBufferLen:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/font/FontFileReader;->readFromFile([BJI)I

    move-result v5

    .line 248
    new-instance v5, Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/font/FontFileReader;->readBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;-><init>([BI)V

    move-object v1, v5

    goto :goto_0

    .line 245
    :cond_2
    const/16 v6, 0x400

    goto :goto_1

    .line 251
    :cond_3
    move v5, v3

    new-array v5, v5, [B

    move-object v4, v5

    .line 252
    .local v4, "data":[B
    move-object v5, v1

    move-object v6, v4

    move v7, v2

    int-to-long v7, v7

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/font/FontFileReader;->readFromFile([BJI)I

    move-result v5

    .line 253
    new-instance v5, Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    goto :goto_0

    .line 233
    .end local v4    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v10

    .end local v1    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileReader;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 94
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/FontFileReader;->raFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit v4

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileReader;
    throw v0
.end method
