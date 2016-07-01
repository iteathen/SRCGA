.class Ljavafx/scene/Node$4;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->styleProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$4;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$4;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    const-string v1, "style"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 1108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$4;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 1109
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node$4;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$4;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-super {v2, v3}, Ljavafx/beans/property/StringPropertyBase;->set(Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1101
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method
