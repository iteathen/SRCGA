.class Ljavafx/scene/media/MediaView$4;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaView;->smoothProperty()Ljavafx/beans/property/BooleanProperty;
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
    .line 523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$4;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$4;->this$0:Ljavafx/scene/media/MediaView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$4;
    const-string v1, "smooth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$4;->this$0:Ljavafx/scene/media/MediaView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaView;->access$1200(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 528
    return-void
.end method
