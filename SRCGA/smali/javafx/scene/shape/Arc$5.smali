.class Ljavafx/scene/shape/Arc$5;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Arc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Arc;->startAngleProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Arc;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Arc;)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Arc;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Arc$5;->this$0:Ljavafx/scene/shape/Arc;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$5;->this$0:Ljavafx/scene/shape/Arc;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$5;
    const-string v1, "startAngle"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$5;->this$0:Ljavafx/scene/shape/Arc;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Arc;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 273
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$5;->this$0:Ljavafx/scene/shape/Arc;

    invoke-static {v1}, Ljavafx/scene/shape/Arc;->access$400(Ljavafx/scene/shape/Arc;)V

    .line 274
    return-void
.end method
