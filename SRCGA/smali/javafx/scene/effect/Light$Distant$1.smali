.class Ljavafx/scene/effect/Light$Distant$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Light$Distant;->azimuthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Light$Distant;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Light$Distant;D)V
    .locals 8

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Light$Distant;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Light$Distant$1;->this$0:Ljavafx/scene/effect/Light$Distant;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Distant$1;->this$0:Ljavafx/scene/effect/Light$Distant;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Distant$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant$1;
    const-string v1, "azimuth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$Distant$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$Distant$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$Distant$1;->this$0:Ljavafx/scene/effect/Light$Distant;

    invoke-virtual {v1}, Ljavafx/scene/effect/Light$Distant;->impl_markDirty()V

    .line 229
    return-void
.end method