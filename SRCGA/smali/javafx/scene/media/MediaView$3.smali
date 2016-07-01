.class Ljavafx/scene/media/MediaView$3;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaView;->preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaView;Z)V
    .locals 5

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaView;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaView$3;->this$0:Ljavafx/scene/media/MediaView;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$3;->this$0:Ljavafx/scene/media/MediaView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$3;
    const-string v1, "preserveRatio"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$3;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$3;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v1}, Ljavafx/scene/media/MediaView;->access$900(Ljavafx/scene/media/MediaView;)V

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$3;->this$0:Ljavafx/scene/media/MediaView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaView;->access$1000(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 475
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$3;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v1}, Ljavafx/scene/media/MediaView;->access$1100(Ljavafx/scene/media/MediaView;)V

    goto :goto_0
.end method
