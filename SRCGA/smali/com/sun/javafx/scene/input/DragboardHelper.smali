.class public Lcom/sun/javafx/scene/input/DragboardHelper;
.super Ljava/lang/Object;
.source "DragboardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;
    }
.end annotation


# static fields
.field private static dragboardAccessor:Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ljavafx/scene/input/Dragboard;

    invoke-static {v0}, Lcom/sun/javafx/scene/input/DragboardHelper;->forceInit(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/DragboardHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
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
    .line 62
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 62
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 66
    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 65
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "dragboard":Ljavafx/scene/input/Dragboard;
    move v1, p1

    .local v1, "restricted":Z
    sget-object v2, Lcom/sun/javafx/scene/input/DragboardHelper;->dragboardAccessor:Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 46
    return-void
.end method

.method public static setDragboardAccessor(Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;
    sget-object v1, Lcom/sun/javafx/scene/input/DragboardHelper;->dragboardAccessor:Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 53
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/scene/input/DragboardHelper;->dragboardAccessor:Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;

    .line 54
    return-void
.end method
