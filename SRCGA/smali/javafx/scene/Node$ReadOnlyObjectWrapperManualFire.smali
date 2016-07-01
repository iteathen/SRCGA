.class Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyObjectWrapperManualFire"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V
    .locals 5

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Node$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;-><init>(Ljavafx/scene/Node;)V

    return-void
.end method


# virtual methods
.method public fireSuperValueChangedEvent()V
    .locals 2

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->fireValueChangedEvent()V

    .line 832
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 0

    .prologue
    .line 828
    .local p0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    return-void
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    const-string v1, "scene"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;, "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire<TT;>;"
    return-object v0
.end method
