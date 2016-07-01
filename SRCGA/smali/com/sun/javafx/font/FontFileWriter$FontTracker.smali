.class Lcom/sun/javafx/font/FontFileWriter$FontTracker;
.super Ljava/lang/Object;
.source "FontFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FontTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;
    }
.end annotation


# static fields
.field public static final MAX_FILE_SIZE:I = 0x2000000

.field public static final MAX_TOTAL_BYTES:I = 0x14000000

.field private static cs:Ljava/util/concurrent/Semaphore;

.field static numBytes:I

.field static tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->cs:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getCS()Ljava/util/concurrent/Semaphore;
    .locals 6

    .prologue
    .line 308
    const-class v4, Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->cs:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/concurrent/Semaphore;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->cs:Ljava/util/concurrent/Semaphore;

    .line 313
    :cond_0
    sget-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->cs:Ljava/util/concurrent/Semaphore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized getTracker()Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    .locals 4

    .prologue
    .line 284
    const-class v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    .line 287
    :cond_0
    sget-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->tracker:Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public acquirePermit()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getCS()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    const-wide/16 v2, 0x78

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    return v0
.end method

.method public add(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->add(Ljava/io/File;)V

    .line 327
    return-void
.end method

.method public declared-synchronized addBytes(I)V
    .locals 5

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move v1, p1

    .local v1, "sz":I
    move-object v4, p0

    monitor-enter v4

    :try_start_0
    sget v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->numBytes:I

    move v3, v1

    add-int/2addr v2, v3

    sput v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit v4

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    throw v0
.end method

.method public declared-synchronized getNumBytes()I
    .locals 3

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move-object v2, p0

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    throw v0
.end method

.method public releasePermit()V
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getCS()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 323
    return-void
.end method

.method public remove(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->remove(Ljava/io/File;)V

    .line 335
    return-void
.end method

.method public set(Ljava/io/File;Ljava/io/RandomAccessFile;)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "raf":Ljava/io/RandomAccessFile;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->set(Ljava/io/File;Ljava/io/RandomAccessFile;)V

    .line 331
    return-void
.end method

.method public declared-synchronized subBytes(I)V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    move v1, p1

    .local v1, "sz":I
    move-object v4, p0

    monitor-enter v4

    :try_start_0
    sget v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->numBytes:I

    move v3, v1

    sub-int/2addr v2, v3

    sput v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit v4

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    throw v0
.end method
