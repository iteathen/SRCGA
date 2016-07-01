.class Ljavafx/scene/image/ImageView$8;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/ImageView;->preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;
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
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageView$8;->this$0:Ljavafx/scene/image/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$8;->this$0:Ljavafx/scene/image/ImageView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$8;
    const-string v1, "preserveRatio"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$8;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$8;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v1}, Ljavafx/scene/image/ImageView;->access$200(Ljavafx/scene/image/ImageView;)V

    .line 514
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$8;->this$0:Ljavafx/scene/image/ImageView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/image/ImageView;->access$1600(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 515
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$8;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v1}, Ljavafx/scene/image/ImageView;->access$1700(Ljavafx/scene/image/ImageView;)V

    .line 516
    return-void
.end method
