.class public Lcom/sun/glass/ui/android/DalvikInput;
.super Ljava/lang/Object;
.source "DalvikInput.java"


# static fields
.field private static activeNode:Ljavafx/scene/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/android/DalvikInput;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I[I[I[I[I)V
    .locals 10

    .prologue
    .line 30
    move v0, p0

    .local v0, "x0":I
    move-object v1, p1

    .local v1, "x1":[I
    move-object v2, p2

    .local v2, "x2":[I
    move-object v3, p3

    .local v3, "x3":[I
    move-object v4, p4

    .local v4, "x4":[I
    move v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/android/DalvikInput;->onMultiTouchEventNative(I[I[I[I[I)V

    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Lcom/sun/glass/ui/android/DalvikInput;->lambda$onGlobalLayoutChanged$43()V

    return-void
.end method

.method private static synthetic lambda$onGlobalLayoutChanged$43()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/glass/ui/android/DalvikInput;->activeNode:Ljavafx/scene/Node;

    invoke-virtual {v0}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v0

    invoke-virtual {v0}, Ljavafx/scene/Parent;->requestFocus()V

    return-void
.end method

.method public static native onConfigurationChangedNative(I)V
.end method

.method public static onGlobalLayoutChanged()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sun/glass/ui/android/DalvikInput;->activeNode:Ljavafx/scene/Node;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/sun/glass/ui/android/DalvikInput$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static onMultiTouchEvent(I[I[I[I[I)V
    .locals 13

    .prologue
    .line 34
    move v0, p0

    .local v0, "count":I
    move-object v1, p1

    .local v1, "actions":[I
    move-object v2, p2

    .local v2, "ids":[I
    move-object/from16 v3, p3

    .local v3, "touchXs":[I
    move-object/from16 v4, p4

    .local v4, "touchYs":[I
    new-instance v5, Lcom/sun/glass/ui/android/DalvikInput$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/glass/ui/android/DalvikInput$1;-><init>(I[I[I[I[I)V

    invoke-static {v5}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method private static native onMultiTouchEventNative(I[I[I[I[I)V
.end method

.method public static native onSurfaceChangedNative()V
.end method

.method public static native onSurfaceChangedNative(III)V
.end method

.method public static native onSurfaceRedrawNeededNative()V
.end method

.method public static setActiveNode(Ljavafx/scene/Node;)V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    sput-object v1, Lcom/sun/glass/ui/android/DalvikInput;->activeNode:Ljavafx/scene/Node;

    .line 55
    return-void
.end method
