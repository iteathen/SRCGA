.class Ljavafx/scene/Node$14;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->hoverPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
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
    .line 6902
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$14;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$14;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6915
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$14;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$14;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$14;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6920
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$14;
    const-string v1, "hover"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$14;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 6906
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$14;
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getInputLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    move-object v1, v2

    .line 6907
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    move-object v2, v1

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6908
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hover="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$14;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 6910
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$14;->this$0:Ljavafx/scene/Node;

    # getter for: Ljavafx/scene/Node;->HOVER_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/Node;->access$4300()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$14;->get()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 6911
    return-void
.end method
