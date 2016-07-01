.class final Ljavafx/scene/Node$EffectiveOrientationProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
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
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 6351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V
    .locals 5

    .prologue
    .line 6351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Node$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Node$EffectiveOrientationProperty;-><init>(Ljavafx/scene/Node;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$EffectiveOrientationProperty;->get()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    return-object v0
.end method

.method public get()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 6355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$EffectiveOrientationProperty;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    const-string v1, "effectiveNodeOrientation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 6369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$EffectiveOrientationProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$EffectiveOrientationProperty;->fireValueChangedEvent()V

    .line 6370
    return-void
.end method
