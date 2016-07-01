.class Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
.super Ljavafx/beans/binding/BooleanExpression;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TreeVisiblePropertyReadOnly"
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/Node;

.field private valid:Z


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 8048
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/BooleanExpression;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 8055
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 8056
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8065
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 8066
    return-void
.end method

.method public get()Z
    .locals 3

    .prologue
    .line 8082
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->valid:Z

    .line 8083
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->this$0:Ljavafx/scene/Node;

    invoke-static {v1}, Ljavafx/scene/Node;->access$4800(Ljavafx/scene/Node;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    return v0
.end method

.method protected invalidate()V
    .locals 3

    .prologue
    .line 8074
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->valid:Z

    if-eqz v1, :cond_0

    .line 8075
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->valid:Z

    .line 8076
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 8078
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 8060
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 8061
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8070
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 8071
    return-void
.end method
