.class Ljavafx/scene/media/MediaView$6;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaView;->yProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaView;)V
    .locals 4

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$6;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$6;->this$0:Ljavafx/scene/media/MediaView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$6;
    const-string v1, "y"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$6;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$6;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v1}, Ljavafx/scene/media/MediaView;->access$1600(Ljavafx/scene/media/MediaView;)V

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$6;->this$0:Ljavafx/scene/media/MediaView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaView;->access$1700(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 626
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$6;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v1}, Ljavafx/scene/media/MediaView;->access$1800(Ljavafx/scene/media/MediaView;)V

    goto :goto_0
.end method
