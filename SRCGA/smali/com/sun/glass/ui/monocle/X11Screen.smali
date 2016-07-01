.class Lcom/sun/glass/ui/monocle/X11Screen;
.super Ljava/lang/Object;
.source "X11Screen.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/NativeScreen;


# static fields
.field private static xLib:Lcom/sun/glass/ui/monocle/X;


# instance fields
.field private depth:I

.field private display:J

.field private height:I

.field private nativeFormat:I

.field private nativeHandle:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->getX()Lcom/sun/glass/ui/monocle/X;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 41

    .prologue
    .line 52
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move/from16 v5, p1

    .local v5, "showCursor":Z
    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/glass/ui/monocle/X;->XInitThreads()V

    .line 57
    move-object/from16 v22, v4

    sget-object v23, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sun/glass/ui/monocle/X;->XOpenDisplay(Ljava/lang/String;)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    .line 58
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X;->XLockDisplay(J)V

    .line 59
    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_0

    .line 60
    new-instance v22, Ljava/lang/NullPointerException;

    move-object/from16 v40, v22

    move-object/from16 v22, v40

    move-object/from16 v23, v40

    const-string v24, "Cannot open X11 display"

    invoke-direct/range {v23 .. v24}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 62
    :cond_0
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X;->DefaultScreenOfDisplay(J)J

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 63
    .local v6, "screen":J
    new-instance v22, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;

    move-object/from16 v40, v22

    move-object/from16 v22, v40

    move-object/from16 v23, v40

    invoke-direct/range {v23 .. v23}, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;-><init>()V

    move-object/from16 v8, v22

    .line 64
    .local v8, "attrs":Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;
    move-object/from16 v22, v8

    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->p:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4c

    invoke-static/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->setEventMask(JJ)V

    .line 67
    const-wide/16 v22, 0x800

    move-wide/from16 v9, v22

    .line 68
    .local v9, "cwMask":J
    move/from16 v22, v5

    if-nez v22, :cond_1

    .line 69
    move-wide/from16 v22, v9

    const-wide/16 v24, 0x4000

    or-long v22, v22, v24

    move-wide/from16 v9, v22

    .line 70
    move-object/from16 v22, v8

    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->p:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->setCursor(JJ)V

    .line 72
    :cond_1
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 73
    .local v11, "x":I
    const/16 v22, 0x0

    move/from16 v12, v22

    .line 74
    .local v12, "y":I
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-wide/from16 v23, v6

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X;->WidthOfScreen(J)I

    move-result v22

    move/from16 v13, v22

    .line 75
    .local v13, "w":I
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-wide/from16 v23, v6

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X;->HeightOfScreen(J)I

    move-result v22

    move/from16 v14, v22

    .line 76
    .local v14, "h":I
    const/16 v22, 0x1

    move/from16 v15, v22

    .line 77
    .local v15, "fullScreen":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/X11Screen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v22

    .line 78
    invoke-static/range {v22 .. v22}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v16, v22

    .line 80
    .local v16, "geometry":Ljava/lang/String;
    move-object/from16 v22, v16

    if-eqz v22, :cond_2

    .line 83
    move-object/from16 v22, v16

    :try_start_0
    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 86
    move-object/from16 v22, v16

    const-string v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    move/from16 v19, v22

    .line 87
    .local v19, "i":I
    move/from16 v22, v19

    if-ltz v22, :cond_5

    .line 88
    move-object/from16 v22, v16

    const/16 v23, 0x0

    move/from16 v24, v19

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v22

    .line 89
    .local v18, "location":Ljava/lang/String;
    move-object/from16 v22, v16

    move/from16 v23, v19

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    .line 94
    .local v17, "size":Ljava/lang/String;
    :goto_0
    move-object/from16 v22, v18

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    move/from16 v19, v22

    .line 95
    move-object/from16 v22, v18

    const/16 v23, 0x0

    move/from16 v24, v19

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v11, v22

    .line 96
    move-object/from16 v22, v18

    move/from16 v23, v19

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v12, v22

    .line 97
    const/16 v22, 0x0

    move/from16 v15, v22

    .line 101
    .end local v18    # "location":Ljava/lang/String;
    .end local v19    # "i":I
    :goto_1
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 102
    move-object/from16 v22, v17

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    move/from16 v18, v22

    .line 103
    .local v18, "i":I
    move-object/from16 v22, v17

    const/16 v23, 0x0

    move/from16 v24, v18

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v13, v22

    .line 104
    move-object/from16 v22, v17

    move/from16 v23, v18

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    move/from16 v14, v22

    .line 105
    const/16 v22, 0x0

    move/from16 v15, v22

    .line 110
    .line 113
    .end local v17    # "size":Ljava/lang/String;
    .end local v18    # "i":I
    :cond_2
    :goto_2
    move/from16 v22, v15

    if-eqz v22, :cond_3

    .line 114
    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->p:J

    move-wide/from16 v22, v0

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->setOverrideRedirect(JZ)V

    .line 115
    move-wide/from16 v22, v9

    const-wide/16 v24, 0x200

    or-long v22, v22, v24

    move-wide/from16 v9, v22

    .line 117
    :cond_3
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    sget-object v25, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-wide/from16 v26, v6

    .line 119
    invoke-virtual/range {v25 .. v27}, Lcom/sun/glass/ui/monocle/X;->RootWindowOfScreen(J)J

    move-result-wide v25

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const-wide/16 v34, 0x0

    move-wide/from16 v36, v9

    move-object/from16 v38, v8

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;->p:J

    move-wide/from16 v38, v0

    .line 117
    invoke-virtual/range {v22 .. v39}, Lcom/sun/glass/ui/monocle/X;->XCreateWindow(JJIIIIIIIJJJ)J

    move-result-wide v22

    move-wide/from16 v17, v22

    .line 127
    .local v17, "window":J
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v17

    invoke-virtual/range {v22 .. v26}, Lcom/sun/glass/ui/monocle/X;->XMapWindow(JJ)V

    .line 128
    move/from16 v22, v15

    if-eqz v22, :cond_4

    .line 129
    new-instance v22, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;

    move-object/from16 v40, v22

    move-object/from16 v22, v40

    move-object/from16 v23, v40

    new-instance v24, Lcom/sun/glass/ui/monocle/X$XEvent;

    move-object/from16 v40, v24

    move-object/from16 v24, v40

    move-object/from16 v25, v40

    invoke-direct/range {v25 .. v25}, Lcom/sun/glass/ui/monocle/X$XEvent;-><init>()V

    invoke-direct/range {v23 .. v24}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;-><init>(Lcom/sun/glass/ui/monocle/X$XEvent;)V

    move-object/from16 v19, v22

    .line 131
    .local v19, "event":Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v17

    invoke-static/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X$XEvent;->setWindow(JJ)V

    .line 132
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    sget-object v24, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v25, v4

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v25, v0

    const-string v27, "_NET_WM_STATE"

    const/16 v28, 0x0

    .line 133
    invoke-virtual/range {v24 .. v28}, Lcom/sun/glass/ui/monocle/X;->XInternAtom(JLjava/lang/String;Z)J

    move-result-wide v24

    .line 132
    invoke-static/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->setMessageType(JJ)V

    .line 137
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x20

    invoke-static/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->setFormat(JJ)V

    .line 138
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x1

    invoke-static/range {v22 .. v26}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->setDataLong(JIJ)V

    .line 139
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    const/16 v24, 0x1

    sget-object v25, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v26, v4

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v26, v0

    const-string v28, "_NET_WM_STATE_FULLSCREEN"

    const/16 v29, 0x0

    .line 140
    invoke-virtual/range {v25 .. v29}, Lcom/sun/glass/ui/monocle/X;->XInternAtom(JLjava/lang/String;Z)J

    move-result-wide v25

    .line 139
    invoke-static/range {v22 .. v26}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->setDataLong(JIJ)V

    .line 144
    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v22, v0

    const/16 v24, 0x2

    const-wide/16 v25, 0x0

    invoke-static/range {v22 .. v26}, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->setDataLong(JIJ)V

    .line 145
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    sget-object v25, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-wide/from16 v26, v6

    invoke-virtual/range {v25 .. v27}, Lcom/sun/glass/ui/monocle/X;->RootWindowOfScreen(J)J

    move-result-wide v25

    const/16 v27, 0x0

    const-wide/32 v28, 0x180000

    move-object/from16 v30, v19

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;->p:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v22 .. v31}, Lcom/sun/glass/ui/monocle/X;->XSendEvent(JJZJJ)V

    .line 149
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v17

    const/16 v27, 0x1

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x0

    invoke-virtual/range {v22 .. v33}, Lcom/sun/glass/ui/monocle/X;->XGrabKeyboard(JJZJJJ)V

    .line 152
    .end local v19    # "event":Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;
    :cond_4
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v17

    const-string v27, "JavaFX framebuffer container"

    invoke-virtual/range {v22 .. v27}, Lcom/sun/glass/ui/monocle/X;->XStoreName(JJLjava/lang/String;)V

    .line 153
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/sun/glass/ui/monocle/X;->XSync(JZ)V

    .line 154
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v19, v22

    .line 155
    .local v19, "widthA":[I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v20, v22

    .line 156
    .local v20, "heightA":[I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v21, v22

    .line 157
    .local v21, "depthA":[I
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    move-wide/from16 v25, v17

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v30, v19

    move-object/from16 v31, v20

    const/16 v32, 0x0

    move-object/from16 v33, v21

    invoke-virtual/range {v22 .. v33}, Lcom/sun/glass/ui/monocle/X;->XGetGeometry(JJ[J[I[I[I[I[I[I)V

    .line 159
    sget-object v22, Lcom/sun/glass/ui/monocle/X11Screen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/X;->XUnlockDisplay(J)V

    .line 160
    move-object/from16 v22, v4

    move-object/from16 v23, v19

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/glass/ui/monocle/X11Screen;->width:I

    .line 161
    move-object/from16 v22, v4

    move-object/from16 v23, v20

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/glass/ui/monocle/X11Screen;->height:I

    .line 162
    move-object/from16 v22, v4

    move-object/from16 v23, v21

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/glass/ui/monocle/X11Screen;->depth:I

    .line 163
    move-object/from16 v22, v4

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/glass/ui/monocle/X11Screen;->nativeFormat:I

    .line 164
    move-object/from16 v22, v4

    move-wide/from16 v23, v17

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/sun/glass/ui/monocle/X11Screen;->nativeHandle:J

    .line 165
    return-void

    .line 91
    .end local v17    # "window":J
    .end local v20    # "heightA":[I
    .end local v21    # "depthA":[I
    .local v19, "i":I
    :cond_5
    move-object/from16 v22, v16

    move-object/from16 v18, v22

    .line 92
    .local v18, "location":Ljava/lang/String;
    :try_start_1
    const-string v22, ""
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v22

    .local v17, "size":Ljava/lang/String;
    goto/16 :goto_0

    .line 99
    .end local v17    # "size":Ljava/lang/String;
    .end local v18    # "location":Ljava/lang/String;
    .end local v19    # "i":I
    :cond_6
    move-object/from16 v22, v16

    move-object/from16 v17, v22

    .restart local v17    # "size":Ljava/lang/String;
    goto/16 :goto_1

    .line 107
    .end local v17    # "size":Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v17, v22

    .line 108
    .local v17, "e":Ljava/lang/NumberFormatException;
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v40, v23

    move-object/from16 v23, v40

    move-object/from16 v24, v40

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot parse geometry string: \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/X11Screen;->lambda$new$123()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$123()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "x11.geometry"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDPI()I
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    const/16 v1, 0x60

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->depth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method getDisplay()J
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->display:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return-wide v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method public getNativeFormat()I
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->nativeFormat:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method public getNativeHandle()J
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->nativeHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return-wide v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method public getScreenCapture()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/X11Screen;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Screen;
    return v0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public swapBuffers()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public uploadPixels(Ljava/nio/Buffer;IIIIF)V
    .locals 0
    .param p1, "b"    # Ljava/nio/Buffer;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "alpha"    # F

    .prologue
    .line 215
    return-void
.end method
