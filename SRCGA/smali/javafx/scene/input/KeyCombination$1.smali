.class final Ljavafx/scene/input/KeyCombination$1;
.super Ljavafx/scene/input/KeyCombination;
.source "KeyCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>([Ljavafx/scene/input/KeyCombination$Modifier;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$1;
    move-object v1, p1

    .local v1, "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/input/KeyCombination;-><init>([Ljavafx/scene/input/KeyCombination$Modifier;)V

    return-void
.end method


# virtual methods
.method public match(Ljavafx/scene/input/KeyEvent;)Z
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$1;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination$1;
    return v0
.end method
