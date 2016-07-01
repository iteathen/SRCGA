.class public abstract Ljavafx/scene/control/TableFocusModel;
.super Ljavafx/scene/control/FocusModel;
.source "TableFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TC:",
        "Ljavafx/scene/control/TableColumnBase",
        "<TT;*>;>",
        "Ljavafx/scene/control/FocusModel",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableFocusModel;, "Ljavafx/scene/control/TableFocusModel<TT;TTC;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/FocusModel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract focus(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTC;)V"
        }
    .end annotation
.end method

.method public abstract focusAboveCell()V
.end method

.method public abstract focusBelowCell()V
.end method

.method public abstract focusLeftCell()V
.end method

.method public abstract focusRightCell()V
.end method

.method public abstract isFocused(ILjavafx/scene/control/TableColumnBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTC;)Z"
        }
    .end annotation
.end method
