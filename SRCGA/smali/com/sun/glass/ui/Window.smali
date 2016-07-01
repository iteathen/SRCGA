.class public abstract Lcom/sun/glass/ui/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;,
        Lcom/sun/glass/ui/Window$TrackingRectangle;,
        Lcom/sun/glass/ui/Window$Level;,
        Lcom/sun/glass/ui/Window$State;,
        Lcom/sun/glass/ui/Window$EventHandler;
    }
.end annotation


# static fields
.field public static final CLOSABLE:I = 0x10

.field public static final MAXIMIZABLE:I = 0x40

.field public static final MINIMIZABLE:I = 0x20

.field public static final NORMAL:I = 0x0

.field public static final POPUP:I = 0x8

.field public static final RIGHT_TO_LEFT:I = 0x80

.field public static final TITLED:I = 0x1

.field public static final TRANSPARENT:I = 0x2

.field public static final UNIFIED:I = 0x100

.field public static final UNTITLED:I = 0x0

.field public static final UTILITY:I = 0x4

.field private static volatile focusedWindow:Lcom/sun/glass/ui/Window;

.field private static final visibleWindows:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:F

.field private volatile delegatePtr:J

.field private volatile disableCount:I

.field private embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

.field private eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

.field private height:I

.field private helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

.field private final isDecorated:Z

.field private volatile isFocusable:Z

.field private volatile isFocused:Z

.field private volatile isModal:Z

.field private volatile isResizable:Z

.field private volatile isVisible:Z

.field private lastKnownEmbeddedX:I

.field private lastKnownEmbeddedY:I

.field private level:I

.field private maximumHeight:I

.field private maximumWidth:I

.field private menubar:Lcom/sun/glass/ui/MenuBar;

.field private minimumHeight:I

.field private minimumWidth:I

.field private final owner:Lcom/sun/glass/ui/Window;

.field private final parent:J

.field private platformScale:F

.field private ptr:J

.field private renderScale:F

.field private screen:Lcom/sun/glass/ui/Screen;

.field private shouldStartUndecoratedMove:Z

.field private state:I

.field private final styleMask:I

.field private title:Ljava/lang/String;

.field private view:Lcom/sun/glass/ui/View;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/LinkedList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    .line 672
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Window;->focusedWindow:Lcom/sun/glass/ui/Window;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 9

    .prologue
    .line 284
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-wide v2, p1

    .local v2, "parent":J
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v4, v1

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 194
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 196
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 197
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 198
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 199
    move-object v4, v1

    const-string v5, ""

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 200
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    .line 202
    move-object v4, v1

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/Window;->state:I

    .line 203
    move-object v4, v1

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/Window;->level:I

    .line 204
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->x:I

    .line 205
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->y:I

    .line 206
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->width:I

    .line 207
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->height:I

    .line 208
    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->alpha:F

    .line 209
    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->platformScale:F

    .line 210
    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->renderScale:F

    .line 216
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 217
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 218
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 220
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 221
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 222
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 223
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 224
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 228
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    .line 230
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->minimumWidth:I

    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 231
    move-object v4, v1

    const v5, 0x7fffffff

    iput v5, v4, Lcom/sun/glass/ui/Window;->maximumWidth:I

    move-object v4, v1

    const v5, 0x7fffffff

    iput v5, v4, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 285
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 286
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    .line 287
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->parent:J

    .line 288
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->styleMask:I

    .line 289
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isDecorated:Z

    .line 292
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 294
    move-object v4, v1

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Window;->_createChildWindow(J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->ptr:J

    .line 295
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 296
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "could not create platform window"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .locals 12

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v4, v0

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 194
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 196
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 197
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 198
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 199
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 200
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    .line 202
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/Window;->state:I

    .line 203
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/Window;->level:I

    .line 204
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->x:I

    .line 205
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->y:I

    .line 206
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->width:I

    .line 207
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->height:I

    .line 208
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->alpha:F

    .line 209
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->platformScale:F

    .line 210
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Window;->renderScale:F

    .line 216
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 217
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 218
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 220
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 221
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 222
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 223
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 224
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 228
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    .line 230
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->minimumWidth:I

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 231
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Lcom/sun/glass/ui/Window;->maximumWidth:I

    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 237
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 238
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    packed-switch v4, :pswitch_data_0

    .line 244
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "The visual kind should be UNTITLED, TITLED, or TRANSPARENT, but not a combination of these"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 242
    .line 246
    :pswitch_0
    move v4, v3

    const/16 v5, 0xc

    and-int/lit8 v4, v4, 0xc

    sparse-switch v4, :sswitch_data_0

    .line 252
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "The functional type should be NORMAL, POPUP, or UTILITY, but not a combination of these"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    .line 255
    :sswitch_0
    move v4, v3

    const/16 v5, 0x100

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 256
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->supportsUnifiedWindows()Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    move v4, v3

    const/16 v5, -0x101

    and-int/lit16 v4, v4, -0x101

    move v3, v4

    .line 260
    :cond_0
    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 261
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->supportsTransparentWindows()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    move v4, v3

    const/4 v5, -0x3

    and-int/lit8 v4, v4, -0x3

    move v3, v4

    .line 266
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    .line 267
    move-object v4, v0

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->parent:J

    .line 268
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/glass/ui/Window;->styleMask:I

    .line 269
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Window;->styleMask:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isDecorated:Z

    .line 271
    move-object v4, v0

    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v2

    :goto_1
    iput-object v5, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 273
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v6

    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 274
    invoke-virtual {v8}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v8

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/Window;->styleMask:I

    .line 273
    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/Window;->_createWindow(JJI)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/glass/ui/Window;->ptr:J

    .line 275
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 276
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string v6, "could not create platform window"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v5

    goto :goto_1

    .line 273
    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 278
    :cond_5
    return-void

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/Window;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->lambda$setVisible$0()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Runnable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/Window;->lambda$setVisible$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static add(Lcom/sun/glass/ui/Window;)V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "window":Lcom/sun/glass/ui/Window;
    sget-object v1, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    return-void
.end method

.method protected static addFirst(Lcom/sun/glass/ui/Window;)V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "window":Lcom/sun/glass/ui/Window;
    sget-object v1, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private checkNotClosed()V
    .locals 7

    .prologue
    .line 306
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 307
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "The window has already been closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_0
    return-void
.end method

.method private checkScreenLocation()V
    .locals 6

    .prologue
    .line 507
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->_getEmbeddedX(J)I

    move-result v3

    iput v3, v2, Lcom/sun/glass/ui/Window;->x:I

    .line 508
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->_getEmbeddedY(J)I

    move-result v3

    iput v3, v2, Lcom/sun/glass/ui/Window;->y:I

    .line 509
    move-object v2, v1

    iget v2, v2, Lcom/sun/glass/ui/Window;->x:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget v2, v2, Lcom/sun/glass/ui/Window;->y:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    if-eq v2, v3, :cond_1

    .line 510
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->x:I

    iput v3, v2, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedX:I

    .line 511
    move-object v2, v1

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->y:I

    iput v3, v2, Lcom/sun/glass/ui/Window;->lastKnownEmbeddedY:I

    .line 512
    move-object v2, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/16 v5, 0x200

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 514
    :cond_1
    return-void
.end method

.method public static getFocusedWindow()Lcom/sun/glass/ui/Window;
    .locals 1

    .prologue
    .line 674
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 675
    sget-object v0, Lcom/sun/glass/ui/Window;->focusedWindow:Lcom/sun/glass/ui/Window;

    return-object v0
.end method

.method public static declared-synchronized getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-class v1, Lcom/sun/glass/ui/Window;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 90
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWindowsClone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 95
    sget-object v0, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private handleWindowEvent(JI)V
    .locals 9

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-wide v1, p1

    .local v1, "time":J
    move v3, p3

    .local v3, "type":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v4, :cond_0

    .line 1266
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    move-object v5, v0

    move-wide v6, v1

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/Window$EventHandler;->handleWindowEvent(Lcom/sun/glass/ui/Window;JI)V

    .line 1268
    :cond_0
    return-void
.end method

.method private isChild()Z
    .locals 6

    .prologue
    .line 328
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 329
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->parent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInFullscreen()Z
    .locals 3

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v2

    move-object v1, v2

    .line 867
    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v2

    goto :goto_0
.end method

.method private synthetic lambda$setVisible$0()V
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkScreenLocation()V

    return-void
.end method

.method private static synthetic lambda$setVisible$1(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "checkRunnable":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static remove(Lcom/sun/glass/ui/Window;)V
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "window":Lcom/sun/glass/ui/Window;
    sget-object v1, Lcom/sun/glass/ui/Window;->visibleWindows:Ljava/util/LinkedList;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 110
    return-void
.end method

.method private static setFocusedWindow(Lcom/sun/glass/ui/Window;)V
    .locals 2

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "window":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    sput-object v1, Lcom/sun/glass/ui/Window;->focusedWindow:Lcom/sun/glass/ui/Window;

    .line 680
    return-void
.end method

.method private synthesizeViewMoveEvent()V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v2

    move-object v1, v2

    .line 600
    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 601
    move-object v2, v1

    const/16 v3, 0x1a7

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 603
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract _close(J)Z
.end method

.method protected abstract _createChildWindow(J)J
.end method

.method protected abstract _createWindow(JJI)J
.end method

.method protected abstract _enterModal(J)V
.end method

.method protected abstract _enterModalWithWindow(JJ)V
.end method

.method protected abstract _exitModal(J)V
.end method

.method protected abstract _getEmbeddedX(J)I
.end method

.method protected abstract _getEmbeddedY(J)I
.end method

.method protected abstract _grabFocus(J)Z
.end method

.method protected abstract _maximize(JZZ)Z
.end method

.method protected abstract _minimize(JZ)Z
.end method

.method protected abstract _releaseInput(J)V
.end method

.method protected abstract _requestFocus(JI)Z
.end method

.method protected abstract _requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V
.end method

.method protected abstract _setAlpha(JF)V
.end method

.method protected abstract _setBackground(JFFF)Z
.end method

.method protected abstract _setBounds(JIIZZIIIIFF)V
.end method

.method protected abstract _setCursor(JLcom/sun/glass/ui/Cursor;)V
.end method

.method protected abstract _setEnabled(JZ)V
.end method

.method protected abstract _setFocusable(JZ)V
.end method

.method protected abstract _setIcon(JLcom/sun/glass/ui/Pixels;)V
.end method

.method protected abstract _setLevel(JI)V
.end method

.method protected abstract _setMaximumSize(JII)Z
.end method

.method protected abstract _setMenubar(JJ)Z
.end method

.method protected abstract _setMinimumSize(JII)Z
.end method

.method protected abstract _setResizable(JZ)Z
.end method

.method protected abstract _setTitle(JLjava/lang/String;)Z
.end method

.method protected abstract _setView(JLcom/sun/glass/ui/View;)Z
.end method

.method protected abstract _setVisible(JZ)Z
.end method

.method protected abstract _toBack(J)V
.end method

.method protected abstract _toFront(J)V
.end method

.method protected abstract _ungrabFocus(J)V
.end method

.method public close()V
    .locals 6

    .prologue
    .line 313
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 314
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    if-eqz v2, :cond_1

    .line 315
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 316
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/glass/ui/Window;->ptr:J

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    move-result v2

    .line 318
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 319
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v2}, Lcom/sun/glass/ui/View;->close()V

    .line 320
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 322
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 323
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Window;->_close(J)Z

    move-result v2

    .line 325
    :cond_2
    return-void
.end method

.method public dispatchNpapiEvent(Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "eventInfo":Ljava/util/Map;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1148
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This operation is not supported on this platform"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enterModal()V
    .locals 4

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1113
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isModal:Z

    if-nez v1, :cond_0

    .line 1114
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1115
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_enterModal(J)V

    .line 1117
    :cond_0
    return-void
.end method

.method public enterModal(Lcom/sun/glass/ui/Window;)V
    .locals 8

    .prologue
    .line 1125
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "window":Lcom/sun/glass/ui/Window;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1126
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isModal:Z

    if-nez v3, :cond_0

    .line 1127
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1128
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;->_enterModalWithWindow(JJ)V

    .line 1130
    :cond_0
    return-void
.end method

.method public exitModal()V
    .locals 4

    .prologue
    .line 1134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1135
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isModal:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1136
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_exitModal(J)V

    .line 1137
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/Window;->isModal:Z

    .line 1139
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 912
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->alpha:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Window$EventHandler;
    .locals 2

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1153
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 533
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 862
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->level:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getMaximumHeight()I
    .locals 2

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1006
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->maximumHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getMaximumWidth()I
    .locals 2

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1001
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->maximumWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getMenuBar()Lcom/sun/glass/ui/MenuBar;
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 425
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 996
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->minimumHeight:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 991
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->minimumWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getNativeHandle()J
    .locals 6

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 347
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->delegatePtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->delegatePtr:J

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    goto :goto_0
.end method

.method public getNativeWindow()J
    .locals 6

    .prologue
    .line 336
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 337
    move-object v2, v1

    invoke-direct {v2}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 338
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->delegatePtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->delegatePtr:J

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    goto :goto_0
.end method

.method public getOutputScale()F
    .locals 2

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->platformScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getOwner()Lcom/sun/glass/ui/Window;
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 360
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->owner:Lcom/sun/glass/ui/Window;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public final getPlatformScale()F
    .locals 2

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->platformScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method protected getRawHandle()J
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/Window;->ptr:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-wide v0
.end method

.method public final getRenderScale()F
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->renderScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 401
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public getStyleMask()I
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 420
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->styleMask:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 824
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public getView()Lcom/sun/glass/ui/View;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 365
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 528
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 518
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->x:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 523
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->y:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public grabFocus()Z
    .locals 5

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 797
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 799
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "The window must be focused when calling grabFocus()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_grabFocus(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method handleMouseEvent(IIIIII)Z
    .locals 14

    .prologue
    .line 1360
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "button":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/glass/ui/Window;->isDecorated:Z

    if-nez v7, :cond_0

    .line 1361
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->handleMouseEvent(IIIIII)Z

    move-result v7

    move v0, v7

    .line 1363
    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 6

    .prologue
    .line 301
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 302
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDecorated()Z
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 439
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isDecorated:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 936
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->disableCount:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 684
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isFocused:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public isMaximized()Z
    .locals 3

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 458
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMinimized()Z
    .locals 3

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 444
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isModal:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 659
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isResizable:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public isTransparentWindow()Z
    .locals 3

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->styleMask:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnifiedWindow()Z
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Window;->styleMask:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 592
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Window;->isVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public maximize(Z)Z
    .locals 8

    .prologue
    .line 463
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "maximize":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 464
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 465
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/Window;->isMaximized()Z

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;->_maximize(JZZ)Z

    move-result v3

    .line 466
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->isMaximized()Z

    move-result v3

    move v1, v3

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1
.end method

.method public minimize(Z)Z
    .locals 7

    .prologue
    .line 449
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "minimize":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 450
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 451
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_minimize(JZ)Z

    move-result v3

    .line 453
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->isMinimized()Z

    move-result v3

    move v1, v3

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1
.end method

.method protected notifyClose()V
    .locals 5

    .prologue
    .line 1174
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/16 v4, 0x209

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1175
    return-void
.end method

.method protected notifyDelegatePtr(J)V
    .locals 7

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-wide v1, p1

    .local v1, "ptr":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/glass/ui/Window;->delegatePtr:J

    .line 1259
    return-void
.end method

.method protected notifyDestroy()V
    .locals 5

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1180
    .line 1189
    :goto_0
    return-void

    .line 1183
    :cond_0
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/16 v4, 0x20a

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1185
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/glass/ui/Window;->ptr:J

    .line 1188
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Window;->setVisible(Z)V

    .line 1189
    goto :goto_0
.end method

.method protected notifyFocus(I)V
    .locals 7

    .prologue
    .line 1236
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "event":I
    move v3, v1

    const/16 v4, 0x21d

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1238
    .local v2, "focused":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isFocused:Z

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 1239
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window;->isFocused:Z

    .line 1240
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isFocused:Z

    if-eqz v3, :cond_2

    .line 1241
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/glass/ui/Window;->setFocusedWindow(Lcom/sun/glass/ui/Window;)V

    .line 1245
    :goto_1
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1247
    :cond_0
    return-void

    .line 1236
    .end local v2    # "focused":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1243
    .restart local v2    # "focused":Z
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sun/glass/ui/Window;->setFocusedWindow(Lcom/sun/glass/ui/Window;)V

    goto :goto_1
.end method

.method protected notifyFocusDisabled()V
    .locals 5

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/16 v4, 0x221

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1251
    return-void
.end method

.method protected notifyFocusUngrab()V
    .locals 5

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/16 v4, 0x222

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1255
    return-void
.end method

.method notifyFullscreen(Z)V
    .locals 7

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "entered":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->getAlpha()F

    move-result v3

    move v2, v3

    .line 873
    .local v2, "alpha":F
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 874
    move v3, v1

    if-eqz v3, :cond_1

    .line 876
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setAlpha(JF)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Window;->setAlpha(F)V

    goto :goto_0
.end method

.method protected notifyLevelChanged(I)V
    .locals 4

    .prologue
    .line 1395
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Window;->level:I

    .line 1396
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v2, :cond_0

    .line 1397
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window$EventHandler;->handleLevelEvent(I)V

    .line 1399
    :cond_0
    return-void
.end method

.method protected notifyMove(II)V
    .locals 7

    .prologue
    .line 1192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/Window;->x:I

    .line 1193
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window;->y:I

    .line 1194
    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/16 v6, 0x200

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1195
    return-void
.end method

.method protected notifyMoveToAnotherScreen(Lcom/sun/glass/ui/Screen;)V
    .locals 4

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "newScreen":Lcom/sun/glass/ui/Screen;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setScreen(Lcom/sun/glass/ui/Screen;)V

    .line 1199
    return-void
.end method

.method protected notifyResize(III)V
    .locals 9

    .prologue
    .line 1209
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "type":I
    move v3, p2

    .local v3, "width":I
    move v4, p3

    .local v4, "height":I
    move v5, v2

    const/16 v6, 0x213

    if-ne v5, v6, :cond_3

    .line 1210
    move-object v5, v1

    const/4 v6, 0x2

    iput v6, v5, Lcom/sun/glass/ui/Window;->state:I

    .line 1225
    :cond_0
    :goto_0
    move-object v5, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1230
    move v5, v2

    const/16 v6, 0x214

    if-eq v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x215

    if-ne v5, v6, :cond_2

    .line 1231
    :cond_1
    move-object v5, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/16 v8, 0x1ff

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->handleWindowEvent(JI)V

    .line 1233
    :cond_2
    return-void

    .line 1212
    :cond_3
    move v5, v2

    const/16 v6, 0x214

    if-ne v5, v6, :cond_4

    .line 1213
    move-object v5, v1

    const/4 v6, 0x3

    iput v6, v5, Lcom/sun/glass/ui/Window;->state:I

    .line 1217
    :goto_1
    move-object v5, v1

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/Window;->width:I

    .line 1218
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/Window;->height:I

    .line 1221
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v5, :cond_0

    .line 1222
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    invoke-virtual {v5}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->updateRectangles()V

    goto :goto_0

    .line 1215
    :cond_4
    move-object v5, v1

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/glass/ui/Window;->state:I

    goto :goto_1
.end method

.method public releaseInput()V
    .locals 4

    .prologue
    .line 1566
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1567
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_releaseInput(J)V

    .line 1568
    return-void
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 732
    move-object v1, v0

    const/16 v2, 0x21e

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return v0
.end method

.method public requestFocus(I)Z
    .locals 8

    .prologue
    .line 704
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "event":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 705
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 707
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->isChild()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    const/16 v4, 0x21e

    if-eq v3, v4, :cond_0

    .line 708
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid focus event ID for top-level window"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 711
    :cond_0
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->isChild()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    const/16 v4, 0x21d

    if-lt v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x220

    if-le v3, v4, :cond_2

    .line 712
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid focus event ID for child window"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 715
    :cond_2
    move v3, v2

    const/16 v4, 0x21d

    if-ne v3, v4, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3

    .line 717
    const/4 v3, 0x1

    move v1, v3

    .line 727
    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    :goto_0
    return v1

    .line 722
    .restart local v1    # "this":Lcom/sun/glass/ui/Window;
    :cond_3
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isFocusable:Z

    if-nez v3, :cond_4

    .line 724
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 727
    :cond_4
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_requestFocus(JI)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V
    .locals 67

    .prologue
    .line 1554
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/Window;
    move-object/from16 v3, p1

    .local v3, "text":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "type":I
    move-wide/from16 v5, p3

    .local v5, "width":D
    move-wide/from16 v7, p5

    .local v7, "height":D
    move-wide/from16 v9, p7

    .local v9, "Mxx":D
    move-wide/from16 v11, p9

    .local v11, "Mxy":D
    move-wide/from16 v13, p11

    .local v13, "Mxz":D
    move-wide/from16 v15, p13

    .local v15, "Mxt":D
    move-wide/from16 v17, p15

    .local v17, "Myx":D
    move-wide/from16 v19, p17

    .local v19, "Myy":D
    move-wide/from16 v21, p19

    .local v21, "Myz":D
    move-wide/from16 v23, p21

    .local v23, "Myt":D
    move-wide/from16 v25, p23

    .local v25, "Mzx":D
    move-wide/from16 v27, p25

    .local v27, "Mzy":D
    move-wide/from16 v29, p27

    .local v29, "Mzz":D
    move-wide/from16 v31, p29

    .local v31, "Mzt":D
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1555
    move-object/from16 v33, v2

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/glass/ui/Window;->ptr:J

    move-wide/from16 v34, v0

    move-object/from16 v36, v3

    move/from16 v37, v4

    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-wide/from16 v44, v11

    move-wide/from16 v46, v13

    move-wide/from16 v48, v15

    move-wide/from16 v50, v17

    move-wide/from16 v52, v19

    move-wide/from16 v54, v21

    move-wide/from16 v56, v23

    move-wide/from16 v58, v25

    move-wide/from16 v60, v27

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    invoke-virtual/range {v33 .. v65}, Lcom/sun/glass/ui/Window;->_requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V

    .line 1559
    return-void
.end method

.method public setAlpha(F)V
    .locals 8

    .prologue
    .line 895
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "alpha":F
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 896
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 897
    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 898
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Alpha should be in the range [0f..1f]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    :cond_1
    move-object v3, v1

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window;->alpha:F

    .line 903
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->isInFullscreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    .line 908
    :goto_0
    return-void

    .line 907
    :cond_2
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/Window;->alpha:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setAlpha(JF)V

    .line 908
    goto :goto_0
.end method

.method public setBackground(FFF)Z
    .locals 11

    .prologue
    .line 929
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "r":F
    move v3, p2

    .local v3, "g":F
    move v4, p3

    .local v4, "b":F
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 930
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 931
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/Window;->ptr:J

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/Window;->_setBackground(JFFF)Z

    move-result v5

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1
.end method

.method public setBounds(IIZZIIIIFF)V
    .locals 24

    .prologue
    .line 570
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xSet":Z
    move/from16 v4, p4

    .local v4, "ySet":Z
    move/from16 v5, p5

    .local v5, "w":I
    move/from16 v6, p6

    .local v6, "h":I
    move/from16 v7, p7

    .local v7, "cw":I
    move/from16 v8, p8

    .local v8, "ch":I
    move/from16 v9, p9

    .local v9, "xGravity":F
    move/from16 v10, p10

    .local v10, "yGravity":F
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 571
    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 572
    move-object v11, v0

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/glass/ui/Window;->ptr:J

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-virtual/range {v11 .. v23}, Lcom/sun/glass/ui/Window;->_setBounds(JIIZZIIIIFF)V

    .line 573
    return-void
.end method

.method public setContentSize(II)V
    .locals 14

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "cw":I
    move/from16 v2, p2

    .local v2, "ch":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 587
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v1

    move v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/sun/glass/ui/Window;->setBounds(IIZZIIIIFF)V

    .line 588
    return-void
.end method

.method public setCursor(Lcom/sun/glass/ui/Cursor;)V
    .locals 7

    .prologue
    .line 1075
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "cursor":Lcom/sun/glass/ui/Cursor;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1076
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setCursor(JLcom/sun/glass/ui/Cursor;)V

    .line 1077
    return-void
.end method

.method public setEnabled(Z)V
    .locals 9

    .prologue
    .line 967
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "enabled":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 968
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 969
    move v3, v2

    if-nez v3, :cond_0

    .line 970
    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 972
    .line 987
    :goto_0
    return-void

    .line 975
    :cond_0
    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->disableCount:I

    if-nez v3, :cond_1

    .line 977
    goto :goto_0

    .line 979
    :cond_1
    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lcom/sun/glass/ui/Window;->disableCount:I

    if-lez v3, :cond_2

    .line 981
    goto :goto_0

    .line 986
    :cond_2
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setEnabled(JZ)V

    .line 987
    goto :goto_0
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Window$EventHandler;)V
    .locals 4

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "eventHandler":Lcom/sun/glass/ui/Window$EventHandler;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1158
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    .line 1159
    return-void
.end method

.method public setFocusable(Z)V
    .locals 7

    .prologue
    .line 742
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "isFocusable":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 743
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 744
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window;->isFocusable:Z

    .line 745
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Window;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setFocusable(JZ)V

    .line 748
    :cond_0
    return-void
.end method

.method public setIcon(Lcom/sun/glass/ui/Pixels;)V
    .locals 7

    .prologue
    .line 1061
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "pixels":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1062
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1063
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setIcon(JLcom/sun/glass/ui/Pixels;)V

    .line 1064
    return-void
.end method

.method public setLevel(I)V
    .locals 8

    .prologue
    .line 849
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "level":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 850
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 851
    move v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 852
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Level should be in the range [1..3]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    :cond_1
    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/Window;->level:I

    move v4, v2

    if-eq v3, v4, :cond_2

    .line 855
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setLevel(JI)V

    .line 856
    move-object v3, v1

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window;->level:I

    .line 858
    :cond_2
    return-void
.end method

.method public setMaximumSize(II)V
    .locals 10

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1041
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v2

    if-gez v3, :cond_1

    .line 1042
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The width and height must be >= 0. Got: width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1044
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1045
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v1

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    const/4 v6, -0x1

    :goto_0
    move v7, v2

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_1
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;->_setMaximumSize(JII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/Window;->maximumWidth:I

    .line 1051
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window;->maximumHeight:I

    .line 1053
    :cond_2
    return-void

    .line 1045
    :cond_3
    move v6, v1

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_1
.end method

.method public setMenuBar(Lcom/sun/glass/ui/MenuBar;)V
    .locals 8

    .prologue
    .line 430
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "menubar":Lcom/sun/glass/ui/MenuBar;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 431
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 432
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/MenuBar;->getNativeMenu()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;->_setMenubar(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/Window;->menubar:Lcom/sun/glass/ui/MenuBar;

    .line 435
    :cond_0
    return-void
.end method

.method public setMinimumSize(II)V
    .locals 9

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1020
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v2

    if-gez v3, :cond_1

    .line 1021
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The width and height must be >= 0. Got: width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1023
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1024
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;->_setMinimumSize(JII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/Window;->minimumWidth:I

    .line 1026
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/Window;->minimumHeight:I

    .line 1028
    :cond_2
    return-void
.end method

.method public setPlatformScale(F)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "platformScale":F
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Window;->platformScale:F

    .line 472
    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 14

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 577
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/sun/glass/ui/Window;->setBounds(IIZZIIIIFF)V

    .line 578
    return-void
.end method

.method public setRenderScale(F)V
    .locals 4

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "renderScale":F
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    if-nez v2, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Window;->renderScale:F

    .line 486
    goto :goto_0
.end method

.method public setResizable(Z)Z
    .locals 7

    .prologue
    .line 646
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move v2, p1

    .local v2, "resizable":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 647
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 648
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isResizable:Z

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 649
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setResizable(JZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/Window;->isResizable:Z

    .line 651
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->synthesizeViewMoveEvent()V

    .line 654
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isResizable:Z

    move v1, v3

    .end local v1    # "this":Lcom/sun/glass/ui/Window;
    return v1
.end method

.method protected setScreen(Lcom/sun/glass/ui/Screen;)V
    .locals 10

    .prologue
    .line 405
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 407
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    move-object v3, v4

    .line 408
    .local v3, "old":Lcom/sun/glass/ui/Screen;
    move-object v4, v1

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 410
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    if-eqz v4, :cond_2

    .line 411
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 412
    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Screen;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->eventHandler:Lcom/sun/glass/ui/Window$EventHandler;

    move-object v5, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v8, v3

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    invoke-virtual/range {v4 .. v9}, Lcom/sun/glass/ui/Window$EventHandler;->handleScreenChangedEvent(Lcom/sun/glass/ui/Window;JLcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V

    .line 416
    :cond_2
    return-void
.end method

.method public setShouldStartUndecoratedMove(Z)V
    .locals 4

    .prologue
    .line 1166
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "v":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1167
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    .line 1168
    return-void
.end method

.method public setSize(II)V
    .locals 14

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "w":I
    move/from16 v2, p2

    .local v2, "h":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 582
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/sun/glass/ui/Window;->setBounds(IIZZIIIIFF)V

    .line 583
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 829
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 830
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 831
    move-object v3, v2

    if-nez v3, :cond_0

    .line 832
    const-string v3, ""

    move-object v2, v3

    .line 834
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 835
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Window;->_setTitle(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/Window;->title:Ljava/lang/String;

    .line 839
    :cond_1
    return-void
.end method

.method public setUndecoratedMoveRectangle(I)V
    .locals 4

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "size":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1281
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1283
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Glass Window.setUndecoratedMoveRectangle is only valid for Undecorated Window. In the future this will be hard error."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1284
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1285
    .line 1291
    :goto_0
    return-void

    .line 1288
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v2, :cond_1

    .line 1289
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setMoveRectangle(I)V

    .line 1291
    :cond_1
    goto :goto_0
.end method

.method public setUndecoratedResizeRectangle(I)V
    .locals 4

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "size":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1321
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/Window;->isResizable:Z

    if-nez v2, :cond_1

    .line 1323
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Glass Window.setUndecoratedResizeRectangle is only valid for Undecorated Resizable Window. In the future this will be hard error."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1324
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1325
    .line 1331
    :goto_0
    return-void

    .line 1328
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v2, :cond_2

    .line 1329
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->setResizeRectangle(I)V

    .line 1331
    :cond_2
    goto :goto_0
.end method

.method public setView(Lcom/sun/glass/ui/View;)V
    .locals 10

    .prologue
    .line 370
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Window;
    move-object v2, p1

    .local v2, "view":Lcom/sun/glass/ui/View;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 371
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 372
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v5

    move-object v3, v5

    .line 373
    .local v3, "oldView":Lcom/sun/glass/ui/View;
    move-object v5, v3

    move-object v6, v2

    if-ne v5, v6, :cond_0

    .line 374
    .line 397
    :goto_0
    return-void

    .line 377
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 378
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 380
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 381
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v5

    move-object v4, v5

    .line 382
    .local v4, "host":Lcom/sun/glass/ui/Window;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 383
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 387
    .end local v4    # "host":Lcom/sun/glass/ui/Window;
    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_4

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/Window;->ptr:J

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    .line 389
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/View;->setWindow(Lcom/sun/glass/ui/Window;)V

    .line 390
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/glass/ui/Window;->isDecorated:Z

    if-nez v5, :cond_3

    .line 391
    move-object v5, v1

    new-instance v6, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;-><init>(Lcom/sun/glass/ui/Window;)V

    iput-object v6, v5, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    .line 397
    :cond_3
    :goto_1
    goto :goto_0

    .line 394
    :cond_4
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/Window;->ptr:J

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->_setView(JLcom/sun/glass/ui/View;)Z

    move-result v5

    .line 395
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/glass/ui/Window;->view:Lcom/sun/glass/ui/View;

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 9

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "visible":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 608
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    move v5, v1

    if-eq v4, v5, :cond_1

    .line 609
    move v4, v1

    if-nez v4, :cond_3

    .line 610
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 611
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/View;->setVisible(Z)V

    .line 614
    :cond_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->ptr:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 615
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/glass/ui/Window;->ptr:J

    move v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->_setVisible(JZ)Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 619
    :goto_0
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/glass/ui/Window;->remove(Lcom/sun/glass/ui/Window;)V

    .line 620
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->parent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 621
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    invoke-virtual {v4}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 642
    :cond_1
    :goto_1
    return-void

    .line 617
    :cond_2
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    goto :goto_0

    .line 624
    :cond_3
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 625
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/glass/ui/Window;->ptr:J

    move v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Window;->_setVisible(JZ)Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/glass/ui/Window;->isVisible:Z

    .line 627
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 628
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/glass/ui/Window;->isVisible:Z

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/View;->setVisible(Z)V

    .line 630
    :cond_4
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/glass/ui/Window;->add(Lcom/sun/glass/ui/Window;)V

    .line 631
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/Window;->parent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 632
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/glass/ui/Window$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/Window;)Ljava/lang/Runnable;

    move-result-object v4

    move-object v2, v4

    .line 633
    .local v2, "checkRunnable":Ljava/lang/Runnable;
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/glass/ui/Window$$Lambda$2;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    move-object v3, v4

    .line 634
    .local v3, "timerRunnable":Ljava/lang/Runnable;
    move-object v4, v0

    .line 635
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Application;->createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    .line 636
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Window;->embeddedLocationTimer:Lcom/sun/glass/ui/Timer;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Timer;->start(I)V

    .line 639
    .end local v2    # "checkRunnable":Ljava/lang/Runnable;
    .end local v3    # "timerRunnable":Ljava/lang/Runnable;
    :cond_5
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/glass/ui/Window;->synthesizeViewMoveEvent()V

    goto :goto_1
.end method

.method public shouldStartUndecoratedMove(II)Z
    .locals 6

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1299
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->shouldStartUndecoratedMove:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1300
    const/4 v3, 0x1

    move v0, v3

    .line 1309
    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    :goto_0
    return v0

    .line 1302
    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1303
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1306
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v3, :cond_2

    .line 1307
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->shouldStartMove(II)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1309
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public shouldStartUndecoratedResize(II)Z
    .locals 6

    .prologue
    .line 1339
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1340
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isDecorated:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/Window;->isResizable:Z

    if-nez v3, :cond_1

    .line 1341
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1347
    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    :goto_0
    return v0

    .line 1344
    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    if-eqz v3, :cond_2

    .line 1345
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Window;->helper:Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window$UndecoratedMoveResizeHelper;->shouldStartResize(II)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1347
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public toBack()V
    .locals 4

    .prologue
    .line 1099
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1100
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1101
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_toBack(J)V

    .line 1102
    return-void
.end method

.method public toFront()V
    .locals 4

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1087
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 1088
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_toFront(J)V

    .line 1089
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window:\n    ptr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1370
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    screen ptr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Window;->screen:Lcom/sun/glass/ui/Screen;

    .line 1371
    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    isDecorated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1372
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isDecorated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1373
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1374
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    focused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1375
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    modal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1376
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isModal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/Window;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1378
    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Window;
    return-object v0

    .line 1371
    .restart local v0    # "this":Lcom/sun/glass/ui/Window;
    :cond_0
    const-string v2, "null"

    goto/16 :goto_0
.end method

.method public ungrabFocus()V
    .locals 4

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 818
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Window;->checkNotClosed()V

    .line 819
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Window;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Window;->_ungrabFocus(J)V

    .line 820
    return-void
.end method
