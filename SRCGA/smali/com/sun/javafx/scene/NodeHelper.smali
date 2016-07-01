.class public Lcom/sun/javafx/scene/NodeHelper;
.super Ljava/lang/Object;
.source "NodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;
    }
.end annotation


# static fields
.field private static nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Ljavafx/scene/Node;

    invoke-static {v0}, Lcom/sun/javafx/scene/NodeHelper;->forceInit(Ljava/lang/Class;)V

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/NodeHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static forceInit(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 88
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 87
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    sget-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static getNodeAccessor()Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    return-object v0
.end method

.method public static getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    sget-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static isDerivedDepthTest(Ljavafx/scene/Node;)Z
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    sget-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->isDerivedDepthTest(Ljavafx/scene/Node;)Z

    move-result v1

    move v0, v1

    .end local v0    # "node":Ljavafx/scene/Node;
    return v0
.end method

.method public static layoutNodeForPrinting(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    sget-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->layoutNodeForPrinting(Ljavafx/scene/Node;)V

    .line 47
    return-void
.end method

.method public static setNodeAccessor(Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;
    sget-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 66
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/scene/NodeHelper;->nodeAccessor:Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    .line 67
    return-void
.end method
