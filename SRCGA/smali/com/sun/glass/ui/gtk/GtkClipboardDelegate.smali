.class Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;
.super Ljava/lang/Object;
.source "GtkClipboardDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/ClipboardDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public createClipboard(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;
    move-object v1, p1

    .local v1, "clipboardName":Ljava/lang/String;
    const-string v2, "SYSTEM"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkSystemClipboard;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkSystemClipboard;-><init>()V

    move-object v0, v2

    .line 42
    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "this":Lcom/sun/glass/ui/gtk/GtkClipboardDelegate;
    :cond_0
    const-string v2, "DND"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkDnDClipboard;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkDnDClipboard;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
