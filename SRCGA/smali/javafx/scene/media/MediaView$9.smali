.class Ljavafx/scene/media/MediaView$9;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaView;->viewportProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/geometry/Rectangle2D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaView;)V
    .locals 4

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$9;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$9;->this$0:Ljavafx/scene/media/MediaView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$9;
    const-string v1, "viewport"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$9;->this$0:Ljavafx/scene/media/MediaView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaView;->access$2500(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 792
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$9;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v1}, Ljavafx/scene/media/MediaView;->access$2600(Ljavafx/scene/media/MediaView;)V

    .line 793
    return-void
.end method
