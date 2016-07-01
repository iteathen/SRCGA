.class Lcom/sun/glass/ui/monocle/X;
.super Ljava/lang/Object;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/X$XColor;,
        Lcom/sun/glass/ui/monocle/X$XDisplay;,
        Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;,
        Lcom/sun/glass/ui/monocle/X$XMotionEvent;,
        Lcom/sun/glass/ui/monocle/X$XButtonEvent;,
        Lcom/sun/glass/ui/monocle/X$XEvent;,
        Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;
    }
.end annotation


# static fields
.field static final Button1:I = 0x1

.field static final Button2:I = 0x2

.field static final Button3:I = 0x3

.field static final Button4:I = 0x4

.field static final Button5:I = 0x5

.field static final ButtonPress:I = 0x4

.field static final ButtonPressMask:J = 0x4L

.field static final ButtonRelease:I = 0x5

.field static final ButtonReleaseMask:J = 0x8L

.field static final CWCursorMask:J = 0x4000L

.field static final CWEventMask:J = 0x800L

.field static final CWOverrideRedirect:J = 0x200L

.field static final CopyFromParent:I = 0x0

.field static final CurrentTime:J = 0x0L

.field static final GrabModeAsync:J = 0x1L

.field static final GrabModeSync:J = 0x0L

.field static final InputOutput:I = 0x1

.field static final MotionNotify:I = 0x6

.field static final None:J = 0x0L

.field static final PointerMotionMask:J = 0x40L

.field static final SubstructureNotifyMask:J = 0x100000L

.field static final SubstructureRedirectMask:J = 0x80000L

.field static final _NET_WM_STATE_ADD:J = 0x1L

.field static final _NET_WM_STATE_REMOVE:J = 0x0L

.field static final _NET_WM_STATE_TOGGLE:J = 0x2L

.field private static instance:Lcom/sun/glass/ui/monocle/X;

.field private static permission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "glass_monocle_x11"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/RuntimePermission;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "loadLibrary.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/monocle/X;->permission:Ljava/security/Permission;

    .line 46
    new-instance v0, Lcom/sun/glass/ui/monocle/X;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/X;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/X;->instance:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermissions()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 60
    .local v0, "security":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 61
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/monocle/X;->permission:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 63
    :cond_0
    return-void
.end method

.method static getX()Lcom/sun/glass/ui/monocle/X;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->checkPermissions()V

    .line 55
    sget-object v0, Lcom/sun/glass/ui/monocle/X;->instance:Lcom/sun/glass/ui/monocle/X;

    return-object v0
.end method


# virtual methods
.method native DefaultScreenOfDisplay(J)J
.end method

.method native HeightOfScreen(J)I
.end method

.method native RootWindowOfScreen(J)J
.end method

.method native WidthOfScreen(J)I
.end method

.method native XCreateBitmapFromData(JJLjava/nio/ByteBuffer;II)J
.end method

.method native XCreatePixmapCursor(JJJJJII)J
.end method

.method native XCreateWindow(JJIIIIIIIJJJ)J
.end method

.method native XDefineCursor(JJJ)V
.end method

.method native XFlush(J)V
.end method

.method native XFreePixmap(JJ)V
.end method

.method native XGetGeometry(JJ[J[I[I[I[I[I[I)V
.end method

.method native XGrabKeyboard(JJZJJJ)V
.end method

.method native XInitThreads()V
.end method

.method native XInternAtom(JLjava/lang/String;Z)J
.end method

.method native XLockDisplay(J)V
.end method

.method native XMapWindow(JJ)V
.end method

.method native XNextEvent(JJ)V
.end method

.method native XOpenDisplay(Ljava/lang/String;)J
.end method

.method native XQueryPointer(JJ[I)V
.end method

.method native XSendEvent(JJZJJ)V
.end method

.method native XStoreName(JJLjava/lang/String;)V
.end method

.method native XSync(JZ)V
.end method

.method native XUndefineCursor(JJ)V
.end method

.method native XUnlockDisplay(J)V
.end method

.method native XWarpPointer(JJJIIIIII)V
.end method
