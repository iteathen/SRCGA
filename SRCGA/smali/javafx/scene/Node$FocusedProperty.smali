.class final Ljavafx/scene/Node$FocusedProperty;
.super Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FocusedProperty"
.end annotation


# instance fields
.field private needsChangeEvent:Z

.field final synthetic this$0:Ljavafx/scene/Node;

.field private valid:Z

.field private value:Z


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 7704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$FocusedProperty;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;-><init>()V

    .line 7706
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Node$FocusedProperty;->valid:Z

    .line 7707
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Node$FocusedProperty;->needsChangeEvent:Z

    return-void
.end method

.method static synthetic access$4600(Ljavafx/scene/Node$FocusedProperty;)Z
    .locals 2

    .prologue
    .line 7704
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$FocusedProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$FocusedProperty;->value:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$FocusedProperty;
    return v0
.end method

.method private markInvalid()V
    .locals 6

    .prologue
    .line 7724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Node$FocusedProperty;->valid:Z

    if-eqz v2, :cond_1

    .line 7725
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Node$FocusedProperty;->valid:Z

    .line 7727
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$FocusedProperty;->this$0:Ljavafx/scene/Node;

    # getter for: Ljavafx/scene/Node;->FOCUSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/Node;->access$4500()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$FocusedProperty;->get()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 7728
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getFocusLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    move-object v1, v2

    .line 7729
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    move-object v2, v1

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7730
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " focused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$FocusedProperty;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 7733
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Node$FocusedProperty;->needsChangeEvent:Z

    .line 7735
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$FocusedProperty;->this$0:Ljavafx/scene/Node;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUSED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 7737
    .end local v1    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_1
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 3

    .prologue
    .line 7741
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node$FocusedProperty;->valid:Z

    .line 7742
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$FocusedProperty;->value:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$FocusedProperty;
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7747
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$FocusedProperty;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$FocusedProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    const-string v1, "focused"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$FocusedProperty;
    return-object v0
.end method

.method public notifyListeners()V
    .locals 3

    .prologue
    .line 7717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$FocusedProperty;->needsChangeEvent:Z

    if-eqz v1, :cond_0

    .line 7718
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$FocusedProperty;->fireValueChangedEvent()V

    .line 7719
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node$FocusedProperty;->needsChangeEvent:Z

    .line 7721
    :cond_0
    return-void
.end method

.method public store(Z)V
    .locals 4

    .prologue
    .line 7710
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$FocusedProperty;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Node$FocusedProperty;->value:Z

    if-eq v2, v3, :cond_0

    .line 7711
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/Node$FocusedProperty;->value:Z

    .line 7712
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node$FocusedProperty;->markInvalid()V

    .line 7714
    :cond_0
    return-void
.end method
