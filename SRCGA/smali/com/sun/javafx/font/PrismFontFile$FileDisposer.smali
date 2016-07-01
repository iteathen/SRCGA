.class Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
.super Ljava/lang/Object;
.source "PrismFontFile.java"

# interfaces
.implements Lcom/sun/javafx/font/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/PrismFontFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileDisposer"
.end annotation


# instance fields
.field factory:Lcom/sun/javafx/font/PrismFontFactory;

.field fileName:Ljava/lang/String;

.field isTracked:Z

.field refKey:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move v2, p2

    .local v2, "isTracked":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 159
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->fileName:Ljava/lang/String;

    .line 160
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->isTracked:Z

    .line 161
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/font/PrismFontFile$FileDisposer;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->lambda$dispose$226()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$dispose$226()Ljava/lang/Void;
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->fileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 175
    .local v1, "file":Ljava/io/File;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    move v2, v4

    .line 176
    .local v2, "size":I
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 179
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->isTracked:Z

    if-eqz v4, :cond_0

    .line 181
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getTracker()Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->subBytes(I)V

    .line 183
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->factory:Lcom/sun/javafx/font/PrismFontFactory;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->refKey:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 184
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->refKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 185
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 186
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->factory:Lcom/sun/javafx/font/PrismFontFactory;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->refKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/PrismFontFactory;->removeTmpFont(Ljava/lang/ref/WeakReference;)V

    .line 187
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->factory:Lcom/sun/javafx/font/PrismFontFactory;

    .line 188
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->refKey:Ljava/lang/ref/WeakReference;

    .line 191
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    sget-boolean v4, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v4, :cond_2

    .line 192
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileDisposer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "size":I
    :cond_2
    :goto_0
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    return-object v0

    .line 194
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v4, :cond_2

    .line 196
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFile$FileDisposer$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/font/PrismFontFile$FileDisposer;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit v3

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    throw v0
.end method

.method public setFactory(Lcom/sun/javafx/font/PrismFontFactory;Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/font/PrismFontFactory;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    move-object v1, p1

    .local v1, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v2, p2

    .local v2, "refKey":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->factory:Lcom/sun/javafx/font/PrismFontFactory;

    .line 166
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->refKey:Ljava/lang/ref/WeakReference;

    .line 167
    return-void
.end method
