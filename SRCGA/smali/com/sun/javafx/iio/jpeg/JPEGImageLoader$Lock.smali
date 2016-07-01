.class Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
.super Ljava/lang/Object;
.source "JPEGImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# instance fields
.field private locked:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 270
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z

    .line 271
    return-void
.end method


# virtual methods
.method public declared-synchronized isLocked()Z
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    throw v0
.end method

.method public declared-synchronized lock()V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Recursive loading is not allowed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    throw v0

    .line 281
    .restart local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    monitor-exit v4

    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Invalid loader state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    throw v0

    .line 288
    .restart local v0    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v1, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->locked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    monitor-exit v4

    return-void
.end method
