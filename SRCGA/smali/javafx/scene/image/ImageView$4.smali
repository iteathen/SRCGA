.class Ljavafx/scene/image/ImageView$4;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/ImageView;->xProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/image/ImageView;


# direct methods
.method constructor <init>(Ljavafx/scene/image/ImageView;)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageView$4;->this$0:Ljavafx/scene/image/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$4;->this$0:Ljavafx/scene/image/ImageView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$4;
    const-string v1, "x"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$4;->this$0:Ljavafx/scene/image/ImageView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/image/ImageView;->access$800(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 315
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$4;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v1}, Ljavafx/scene/image/ImageView;->access$900(Ljavafx/scene/image/ImageView;)V

    .line 316
    return-void
.end method
