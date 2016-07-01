.class final Ljavafx/scene/image/Image$ImageTask;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lcom/sun/javafx/runtime/async/AsyncOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
        "<",
        "Lcom/sun/javafx/tk/ImageLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final peer:Lcom/sun/javafx/runtime/async/AsyncOperation;

.field final synthetic this$0:Ljavafx/scene/image/Image;


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1016
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/image/Image$ImageTask;->constructPeer()Lcom/sun/javafx/runtime/async/AsyncOperation;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/image/Image$ImageTask;->peer:Lcom/sun/javafx/runtime/async/AsyncOperation;

    .line 1017
    return-void
.end method

.method private constructPeer()Lcom/sun/javafx/runtime/async/AsyncOperation;
    .locals 10

    .prologue
    .line 1056
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v3}, Ljavafx/scene/image/Image;->access$600(Ljavafx/scene/image/Image;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    .line 1057
    invoke-static {v4}, Ljavafx/scene/image/Image;->access$700(Ljavafx/scene/image/Image;)D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v6}, Ljavafx/scene/image/Image;->access$800(Ljavafx/scene/image/Image;)D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    .line 1058
    invoke-static {v8}, Ljavafx/scene/image/Image;->access$900(Ljavafx/scene/image/Image;)Z

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v9}, Ljavafx/scene/image/Image;->access$1000(Ljavafx/scene/image/Image;)Z

    move-result v9

    .line 1056
    invoke-static/range {v2 .. v9}, Ljavafx/scene/image/Image;->access$1100(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;DDZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/image/Image$ImageTask;
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ImageTask;->peer:Lcom/sun/javafx/runtime/async/AsyncOperation;

    invoke-interface {v1}, Lcom/sun/javafx/runtime/async/AsyncOperation;->cancel()V

    .line 1053
    return-void
.end method

.method public onCancel()V
    .locals 6

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Loading cancelled"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljavafx/scene/image/Image;->access$300(Ljavafx/scene/image/Image;Ljava/lang/Exception;)V

    .line 1022
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v1}, Ljavafx/scene/image/Image;->access$400(Ljavafx/scene/image/Image;)V

    .line 1023
    return-void
.end method

.method public onCompletion(Lcom/sun/javafx/tk/ImageLoader;)V
    .locals 4

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/tk/ImageLoader;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/image/Image;->access$500(Ljavafx/scene/image/Image;Lcom/sun/javafx/tk/ImageLoader;)V

    .line 1034
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v2}, Ljavafx/scene/image/Image;->access$400(Ljavafx/scene/image/Image;)V

    .line 1035
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/ImageLoader;

    invoke-virtual {v2, v3}, Ljavafx/scene/image/Image$ImageTask;->onCompletion(Lcom/sun/javafx/tk/ImageLoader;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/image/Image;->access$300(Ljavafx/scene/image/Image;Ljava/lang/Exception;)V

    .line 1028
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v2}, Ljavafx/scene/image/Image;->access$400(Ljavafx/scene/image/Image;)V

    .line 1029
    return-void
.end method

.method public onProgress(II)V
    .locals 12

    .prologue
    .line 1039
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image$ImageTask;
    move v2, p1

    .local v2, "cur":I
    move v3, p2

    .local v3, "max":I
    move v6, v3

    if-lez v6, :cond_0

    .line 1040
    move v6, v2

    int-to-double v6, v6

    move v8, v3

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 1041
    .local v4, "curProgress":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    invoke-virtual {v8}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    add-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 1042
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/image/Image$ImageTask;->this$0:Ljavafx/scene/image/Image;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/image/Image;->setProgress(D)V

    .line 1045
    .end local v4    # "curProgress":D
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1048
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ImageTask;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ImageTask;->peer:Lcom/sun/javafx/runtime/async/AsyncOperation;

    invoke-interface {v1}, Lcom/sun/javafx/runtime/async/AsyncOperation;->start()V

    .line 1049
    return-void
.end method
