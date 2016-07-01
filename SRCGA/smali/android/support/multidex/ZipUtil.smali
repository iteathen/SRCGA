.class final Landroid/support/multidex/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/ZipUtil$CentralDirectory;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final ENDHDR:I = 0x16

.field private static final ENDSIG:I = 0x6054b50


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroid/support/multidex/ZipUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v2, p1

    .local v2, "dir":Landroid/support/multidex/ZipUtil$CentralDirectory;
    new-instance v8, Ljava/util/zip/CRC32;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    move-object v3, v8

    .line 109
    .local v3, "crc":Ljava/util/zip/CRC32;
    move-object v8, v2

    iget-wide v8, v8, Landroid/support/multidex/ZipUtil$CentralDirectory;->size:J

    move-wide v4, v8

    .line 110
    .local v4, "stillToRead":J
    move-object v8, v1

    move-object v9, v2

    iget-wide v9, v9, Landroid/support/multidex/ZipUtil$CentralDirectory;->offset:J

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    const-wide/16 v8, 0x4000

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    move v6, v8

    .line 112
    .local v6, "length":I
    const/16 v8, 0x4000

    new-array v8, v8, [B

    move-object v7, v8

    .line 113
    .local v7, "buffer":[B
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    move v6, v8

    .line 114
    :goto_0
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 115
    move-object v8, v3

    move-object v9, v7

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/zip/CRC32;->update([BII)V

    .line 116
    move-wide v8, v4

    move v10, v6

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v4, v8

    .line 117
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 118
    .line 123
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    return-wide v1

    .line 120
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    const-wide/16 v8, 0x4000

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    move v6, v8

    .line 121
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    move v6, v8

    goto :goto_0
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long/2addr v8, v10

    move-wide v2, v8

    .line 69
    .local v2, "scanOffset":J
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 70
    new-instance v8, Ljava/util/zip/ZipException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File too short to be a zip file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 73
    :cond_0
    move-wide v8, v2

    const-wide/32 v10, 0x10000

    sub-long/2addr v8, v10

    move-wide v4, v8

    .line 74
    .local v4, "stopOffset":J
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 75
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 78
    :cond_1
    const v8, 0x6054b50

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    move v6, v8

    .line 80
    .local v6, "endSig":I
    :cond_2
    move-object v8, v1

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    move v9, v6

    if-ne v8, v9, :cond_3

    .line 82
    .line 95
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    .line 96
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    .line 97
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    .line 98
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    .line 99
    new-instance v8, Landroid/support/multidex/ZipUtil$CentralDirectory;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/support/multidex/ZipUtil$CentralDirectory;-><init>()V

    move-object v7, v8

    .line 100
    .local v7, "dir":Landroid/support/multidex/ZipUtil$CentralDirectory;
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    iput-wide v9, v8, Landroid/support/multidex/ZipUtil$CentralDirectory;->size:J

    .line 101
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    iput-wide v9, v8, Landroid/support/multidex/ZipUtil$CentralDirectory;->offset:J

    .line 102
    move-object v8, v7

    move-object v1, v8

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    return-object v1

    .line 85
    .end local v7    # "dir":Landroid/support/multidex/ZipUtil$CentralDirectory;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    move-wide v8, v2

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v2, v8

    .line 86
    move-wide v8, v2

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 87
    new-instance v8, Ljava/util/zip/ZipException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "End Of Central Directory signature not found"

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "apk":Ljava/io/File;
    new-instance v6, Ljava/io/RandomAccessFile;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v6

    .line 57
    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Landroid/support/multidex/ZipUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;

    move-result-object v6

    move-object v2, v6

    .line 59
    .local v2, "dir":Landroid/support/multidex/ZipUtil$CentralDirectory;
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/multidex/ZipUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v3, v6

    .line 61
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    move-wide v6, v3

    move-wide v0, v6

    .end local v0    # "apk":Ljava/io/File;
    return-wide v0

    .end local v2    # "dir":Landroid/support/multidex/ZipUtil$CentralDirectory;
    .restart local v0    # "apk":Ljava/io/File;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    move-object v6, v5

    throw v6
.end method
