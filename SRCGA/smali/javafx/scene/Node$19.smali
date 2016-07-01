.class Ljavafx/scene/Node$19;
.super Lcom/sun/glass/ui/Accessible$EventHandler;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->getAccessible()Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 9624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$19;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$19;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Accessible$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 9649
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$19;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$19;->this$0:Ljavafx/scene/Node;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 9650
    return-void
.end method

.method public getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 6

    .prologue
    .line 9627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$19;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$19;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v1, v2

    .line 9628
    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 9630
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Accessbility requested for node not on a scene"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9632
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9633
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/javafx/tk/TKScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    move-object v0, v2

    .line 9642
    .end local v0    # "this":Ljavafx/scene/Node$19;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node$19;
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->acc:Ljava/security/AccessControlContext;

    move-object v0, v2

    goto :goto_0
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9646
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$19;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$19;->this$0:Ljavafx/scene/Node;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node$19;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$19;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$19;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 9653
    .local v1, "klassName":Ljava/lang/String;
    move-object v2, v1

    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$19;
    return-object v0
.end method
