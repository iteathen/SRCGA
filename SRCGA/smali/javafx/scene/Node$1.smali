.class Ljavafx/scene/Node$1;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->parentPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/Parent;",
        ">;"
    }
.end annotation


# instance fields
.field private oldParent:Ljavafx/scene/Parent;

.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$1;
    const-string v1, "parent"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->oldParent:Ljavafx/scene/Parent;

    if-eqz v2, :cond_0

    .line 739
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->oldParent:Ljavafx/scene/Parent;

    invoke-virtual {v2}, Ljavafx/scene/Parent;->disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v3}, Ljavafx/scene/Node;->access$000(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 740
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->oldParent:Ljavafx/scene/Parent;

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v3}, Ljavafx/scene/Node;->access$100(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/BooleanExpression;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 741
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v2

    invoke-static {v2}, Ljavafx/scene/Node$NodeTransformation;->access$300(Ljavafx/scene/Node$NodeTransformation;)I

    move-result v2

    if-lez v2, :cond_0

    .line 742
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->oldParent:Ljavafx/scene/Parent;

    invoke-virtual {v2}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    .line 743
    invoke-static {v3}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/Node$NodeTransformation;->access$400(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 742
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 746
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$500(Ljavafx/scene/Node;)V

    .line 747
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->computeDerivedDepthTest()V

    .line 748
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Parent;

    move-object v1, v2

    .line 749
    .local v1, "newParent":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 750
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v3}, Ljavafx/scene/Node;->access$000(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 751
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v3}, Ljavafx/scene/Node;->access$100(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/BooleanExpression;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 752
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v2

    invoke-static {v2}, Ljavafx/scene/Node$NodeTransformation;->access$300(Ljavafx/scene/Node$NodeTransformation;)I

    move-result v2

    if-lez v2, :cond_1

    .line 753
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    .line 754
    invoke-static {v3}, Ljavafx/scene/Node;->access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/Node$NodeTransformation;->access$400(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 753
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 762
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 769
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/Node;->access$600(Ljavafx/scene/Node;Z)V

    .line 770
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$1;->oldParent:Ljavafx/scene/Parent;

    .line 771
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-static {v2}, Ljavafx/scene/Node;->access$700(Ljavafx/scene/Node;)V

    .line 772
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->parentResolvedOrientationInvalidated()V

    .line 773
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 774
    return-void

    .line 767
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$1;->this$0:Ljavafx/scene/Node;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    iput-object v3, v2, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    goto :goto_0
.end method
