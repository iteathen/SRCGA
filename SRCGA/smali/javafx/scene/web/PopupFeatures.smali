.class public final Ljavafx/scene/web/PopupFeatures;
.super Ljava/lang/Object;
.source "PopupFeatures.java"


# instance fields
.field private final menu:Z

.field private final resizable:Z

.field private final status:Z

.field private final toolbar:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PopupFeatures;
    move v1, p1

    .local v1, "menu":Z
    move v2, p2

    .local v2, "status":Z
    move v3, p3

    .local v3, "toolbar":Z
    move v4, p4

    .local v4, "resizable":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Ljavafx/scene/web/PopupFeatures;->menu:Z

    .line 52
    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Ljavafx/scene/web/PopupFeatures;->status:Z

    .line 53
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Ljavafx/scene/web/PopupFeatures;->toolbar:Z

    .line 54
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljavafx/scene/web/PopupFeatures;->resizable:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final hasMenu()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PopupFeatures;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/web/PopupFeatures;->menu:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PopupFeatures;
    return v0
.end method

.method public final hasStatus()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PopupFeatures;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/web/PopupFeatures;->status:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PopupFeatures;
    return v0
.end method

.method public final hasToolbar()Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PopupFeatures;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/web/PopupFeatures;->toolbar:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PopupFeatures;
    return v0
.end method

.method public final isResizable()Z
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PopupFeatures;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/web/PopupFeatures;->resizable:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PopupFeatures;
    return v0
.end method
