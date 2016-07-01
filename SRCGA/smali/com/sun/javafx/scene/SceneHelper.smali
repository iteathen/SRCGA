.class public final Lcom/sun/javafx/scene/SceneHelper;
.super Ljava/lang/Object;
.source "SceneHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;
    }
.end annotation


# static fields
.field private static sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Ljavafx/scene/Scene;

    invoke-static {v0}, Lcom/sun/javafx/scene/SceneHelper;->forceInit(Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/SceneHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "root":Ljavafx/scene/Parent;
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "root":Ljavafx/scene/Parent;
    return-object v0
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
    .line 97
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 98
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 97
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .line 102
    return-void

    .line 99
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 100
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public static getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public static getSceneAccessor()Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    return-object v0
.end method

.method public static parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V

    .line 54
    return-void
.end method

.method public static setPaused(Z)V
    .locals 3

    .prologue
    .line 48
    move v0, p0

    .local v0, "paused":Z
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->setPaused(Z)V

    .line 49
    return-void
.end method

.method public static setSceneAccessor(Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;
    sget-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 73
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/scene/SceneHelper;->sceneAccessor:Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    .line 74
    return-void
.end method
