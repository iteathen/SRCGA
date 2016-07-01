.class Ljavafx/scene/image/ImageView$3;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/ImageView;
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
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageView$3;->this$0:Ljavafx/scene/image/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$3;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/ImageView$3;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v2}, Ljavafx/scene/image/ImageView;->access$200(Ljavafx/scene/image/ImageView;)V

    .line 288
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/ImageView$3;->this$0:Ljavafx/scene/image/ImageView;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/image/ImageView;->access$600(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 289
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/ImageView$3;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v2}, Ljavafx/scene/image/ImageView;->access$700(Ljavafx/scene/image/ImageView;)V

    .line 290
    return-void
.end method
