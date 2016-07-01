.class Ljavafx/scene/shape/Line$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Line;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Line;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Line;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Line$1;->this$0:Ljavafx/scene/shape/Line;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line$1;->this$0:Ljavafx/scene/shape/Line;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line$1;
    const-string v1, "startX"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Line$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Line$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line$1;->this$0:Ljavafx/scene/shape/Line;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Line;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 100
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Line$1;->this$0:Ljavafx/scene/shape/Line;

    invoke-static {v1}, Ljavafx/scene/shape/Line;->access$000(Ljavafx/scene/shape/Line;)V

    .line 101
    return-void
.end method
