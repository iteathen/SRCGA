.class final Ljavafx/scene/Scene$EffectiveOrientationProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EffectiveOrientationProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Ljavafx/geometry/NodeOrientation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method private constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 6252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Scene;Ljavafx/scene/Scene$1;)V
    .locals 5

    .prologue
    .line 6252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Scene$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$EffectiveOrientationProperty;-><init>(Ljavafx/scene/Scene;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene$EffectiveOrientationProperty;->get()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    return-object v0
.end method

.method public get()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 6256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    const-string v1, "effectiveNodeOrientation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 6270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$EffectiveOrientationProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene$EffectiveOrientationProperty;->fireValueChangedEvent()V

    .line 6271
    return-void
.end method
