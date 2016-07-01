.class Ljavafx/scene/Node$9;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->managedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 2398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$9;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$9;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$9;
    const-string v1, "managed"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 2402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$9;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$9;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 2403
    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2404
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->managedChildChanged()V

    .line 2406
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$9;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->notifyManagedChanged()V

    .line 2407
    return-void
.end method
