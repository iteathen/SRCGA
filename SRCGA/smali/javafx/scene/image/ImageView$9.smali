.class Ljavafx/scene/image/ImageView$9;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/ImageView;->smoothProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/image/ImageView;


# direct methods
.method constructor <init>(Ljavafx/scene/image/ImageView;Z)V
    .locals 5

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/image/ImageView$9;->this$0:Ljavafx/scene/image/ImageView;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$9;->this$0:Ljavafx/scene/image/ImageView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$9;
    const-string v1, "smooth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$9;->this$0:Ljavafx/scene/image/ImageView;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/image/ImageView;->access$1800(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 566
    return-void
.end method
