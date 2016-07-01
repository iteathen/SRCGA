.class final Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;
.super Ljava/lang/Object;
.source "MonocleClipboardDelegate.java"

# interfaces
.implements Lcom/sun/glass/ui/delegate/ClipboardDelegate;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClipboard(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;
    move-object v1, p1

    .local v1, "clipboardName":Ljava/lang/String;
    const-string v2, "DND"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;-><init>()V

    move-object v0, v2

    .line 45
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleClipboardDelegate;
    :cond_0
    const-string v2, "SYSTEM"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
