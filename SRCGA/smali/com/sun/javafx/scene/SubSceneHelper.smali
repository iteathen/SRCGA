.class public Lcom/sun/javafx/scene/SubSceneHelper;
.super Ljava/lang/Object;
.source "SubSceneHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;
    }
.end annotation


# static fields
.field private static subSceneAccessor:Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Ljavafx/scene/SubScene;

    invoke-static {v0}, Lcom/sun/javafx/scene/SubSceneHelper;->forceInit(Ljava/lang/Class;)V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SubSceneHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
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
    .line 67
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 68
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 67
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 70
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "subScene":Ljavafx/scene/SubScene;
    sget-object v1, Lcom/sun/javafx/scene/SubSceneHelper;->subSceneAccessor:Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;->getEffectiveCamera(Ljavafx/scene/SubScene;)Ljavafx/scene/Camera;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "subScene":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public static isDepthBuffer(Ljavafx/scene/SubScene;)Z
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "subScene":Ljavafx/scene/SubScene;
    sget-object v1, Lcom/sun/javafx/scene/SubSceneHelper;->subSceneAccessor:Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;->isDepthBuffer(Ljavafx/scene/SubScene;)Z

    move-result v1

    move v0, v1

    .end local v0    # "subScene":Ljavafx/scene/SubScene;
    return v0
.end method

.method public static setSubSceneAccessor(Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;
    sget-object v1, Lcom/sun/javafx/scene/SubSceneHelper;->subSceneAccessor:Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 57
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/scene/SubSceneHelper;->subSceneAccessor:Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;

    .line 58
    return-void
.end method
