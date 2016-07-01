.class public final Lcom/sun/javafx/stage/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;
    }
.end annotation


# static fields
.field private static windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Ljavafx/stage/Window;

    invoke-static {v0}, Lcom/sun/javafx/stage/WindowHelper;->forceInit(Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
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
    .line 92
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 93
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 92
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static getAccessControlContext(Ljavafx/stage/Window;)Ljava/security/AccessControlContext;
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "window":Ljavafx/stage/Window;
    sget-object v1, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;->getAccessControlContext(Ljavafx/stage/Window;)Ljava/security/AccessControlContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "window":Ljavafx/stage/Window;
    return-object v0
.end method

.method public static getWindowAccessor()Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    return-object v0
.end method

.method public static notifyLocationChanged(Ljavafx/stage/Window;DD)V
    .locals 13

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "window":Ljavafx/stage/Window;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    sget-object v6, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;->notifyLocationChanged(Ljavafx/stage/Window;DD)V

    .line 51
    return-void
.end method

.method public static notifySizeChanged(Ljavafx/stage/Window;DD)V
    .locals 13

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "window":Ljavafx/stage/Window;
    move-wide v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    sget-object v6, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;->notifySizeChanged(Ljavafx/stage/Window;DD)V

    .line 57
    return-void
.end method

.method public static setWindowAccessor(Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;
    sget-object v1, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 68
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/stage/WindowHelper;->windowAccessor:Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    .line 69
    return-void
.end method
