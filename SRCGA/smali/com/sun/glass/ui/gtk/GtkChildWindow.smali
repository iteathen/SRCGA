.class final Lcom/sun/glass/ui/gtk/GtkChildWindow;
.super Lcom/sun/glass/ui/gtk/GtkWindow;
.source "GtkChildWindow.java"


# direct methods
.method public constructor <init>(J)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v1, p1

    .local v1, "parent":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/gtk/GtkWindow;-><init>(J)V

    .line 33
    return-void
.end method


# virtual methods
.method protected _enterModal(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 37
    return-void
.end method

.method protected _enterModalWithWindow(JJ)V
    .locals 0
    .param p1, "dialog"    # J
    .param p3, "window"    # J

    .prologue
    .line 41
    return-void
.end method

.method protected _exitModal(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 45
    return-void
.end method

.method protected _maximize(JZZ)Z
    .locals 7

    .prologue
    .line 49
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "maximize":Z
    move v5, p4

    .local v5, "wasMaximized":Z
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _minimize(JZ)Z
    .locals 7

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "minimize":Z
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _setAlpha(JF)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "alpha"    # F

    .prologue
    .line 75
    return-void
.end method

.method protected _setEnabled(JZ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "enabled"    # Z

    .prologue
    .line 59
    return-void
.end method

.method protected _setFocusable(JZ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "isFocusable"    # Z

    .prologue
    .line 63
    return-void
.end method

.method protected _setIcon(JLcom/sun/glass/ui/Pixels;)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "pixels"    # Lcom/sun/glass/ui/Pixels;

    .prologue
    .line 67
    return-void
.end method

.method protected _setLevel(JI)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "level"    # I

    .prologue
    .line 71
    return-void
.end method

.method protected _setMaximumSize(JII)Z
    .locals 7

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "width":I
    move v5, p4

    .local v5, "height":I
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _setMenubar(JJ)Z
    .locals 7

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, p3

    .local v4, "menubarPtr":J
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _setMinimumSize(JII)Z
    .locals 7

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "width":I
    move v5, p4

    .local v5, "height":I
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _setResizable(JZ)Z
    .locals 7

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "resizable":Z
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method

.method protected _setTitle(JLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, p3

    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkChildWindow;
    return v1
.end method
