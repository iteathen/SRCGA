.class final Lcom/sun/javafx/property/adapter/Disposer$1;
.super Ljava/lang/Object;
.source "Disposer.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/property/adapter/Disposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/Disposer$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/Disposer$1;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    move-object v1, v3

    .line 61
    .local v1, "tg":Ljava/lang/ThreadGroup;
    move-object v3, v1

    move-object v2, v3

    .line 62
    .local v2, "tgn":Ljava/lang/ThreadGroup;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 63
    move-object v3, v2

    move-object v1, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    .line 65
    # getter for: Lcom/sun/javafx/property/adapter/Disposer;->disposerInstance:Lcom/sun/javafx/property/adapter/Disposer;
    invoke-static {}, Lcom/sun/javafx/property/adapter/Disposer;->access$000()Lcom/sun/javafx/property/adapter/Disposer;

    move-result-object v6

    const-string v7, "Property Disposer"

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v3

    .line 66
    .local v2, "t":Ljava/lang/Thread;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 67
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 68
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 69
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 70
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/Disposer$1;
    return-object v0
.end method
