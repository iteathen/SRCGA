.class Ljavafx/scene/shape/Shape$2;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Shape;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape$2;->this$0:Ljavafx/scene/shape/Shape;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$2;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$2;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 442
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$2;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 443
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$2;->this$0:Ljavafx/scene/shape/Shape;

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$300(Ljavafx/scene/shape/Shape;)V

    .line 444
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$2;->this$0:Ljavafx/scene/shape/Shape;

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$100(Ljavafx/scene/shape/Shape;)V

    .line 445
    return-void
.end method
