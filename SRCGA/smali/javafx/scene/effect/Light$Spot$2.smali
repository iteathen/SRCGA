.class Ljavafx/scene/effect/Light$Spot$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Light$Spot;->pointsAtYProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Light$Spot;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Light$Spot;)V
    .locals 4

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Light$Spot;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/Light$Spot$2;->this$0:Ljavafx/scene/effect/Light$Spot;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot$2;->this$0:Ljavafx/scene/effect/Light$Spot;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot$2;
    const-string v1, "pointsAtY"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Spot$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Spot$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Spot$2;->this$0:Ljavafx/scene/effect/Light$Spot;

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Spot;->impl_markDirty()V

    .line 642
    return-void
.end method
