.class public final Lcom/sun/glass/ui/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/MenuItem$Callback;
    }
.end annotation


# static fields
.field public static final Separator:Lcom/sun/glass/ui/MenuItem;


# instance fields
.field private callback:Lcom/sun/glass/ui/MenuItem$Callback;

.field private checked:Z

.field private final delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

.field private enabled:Z

.field private shortcutKey:I

.field private shortcutModifiers:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/MenuItem;->Separator:Lcom/sun/glass/ui/MenuItem;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)V
    .locals 11

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move v3, p3

    .local v3, "shortcutKey":I
    move v4, p4

    .local v4, "shortcutModifiers":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V
    .locals 15

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object/from16 v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move/from16 v3, p3

    .local v3, "shortcutKey":I
    move/from16 v4, p4

    .local v4, "shortcutModifiers":I
    move-object/from16 v5, p5

    .local v5, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 65
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    .line 66
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    .line 67
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    .line 68
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    .line 69
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    .line 70
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/glass/ui/MenuItem;->checked:Z

    .line 71
    move-object v6, v0

    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/PlatformFactory;->createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    .line 72
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sun/glass/ui/MenuItem;->checked:Z

    invoke-interface/range {v6 .. v13}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "MenuItem creation error."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/sun/glass/ui/MenuItem$Callback;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 92
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return-object v0
.end method

.method getDelegate()Lcom/sun/glass/ui/delegate/MenuItemDelegate;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return-object v0
.end method

.method public getShortcutKey()I
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 131
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return v0
.end method

.method public getShortcutModifiers()I
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 139
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 116
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/MenuItem;->checked:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 104
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return v0
.end method

.method public setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/MenuItem;->callback:Lcom/sun/glass/ui/MenuItem$Callback;

    .line 100
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move v1, p1

    .local v1, "checked":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setChecked(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/MenuItem;->checked:Z

    .line 124
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move v1, p1

    .local v1, "enabled":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/MenuItem;->enabled:Z

    .line 112
    :cond_0
    return-void
.end method

.method public setPixels(Lcom/sun/glass/ui/Pixels;)Z
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/MenuItem;
    return v0
.end method

.method public setShortcut(II)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move v1, p1

    .local v1, "shortcutKey":I
    move v2, p2

    .local v2, "shortcutModifiers":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 144
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setShortcut(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/MenuItem;->shortcutKey:I

    .line 146
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/MenuItem;->shortcutModifiers:I

    .line 148
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/MenuItem;->delegate:Lcom/sun/glass/ui/delegate/MenuItemDelegate;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/glass/ui/delegate/MenuItemDelegate;->setTitle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/MenuItem;->title:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method
