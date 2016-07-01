.class public abstract Lcom/sun/glass/ui/Robot;
.super Ljava/lang/Object;
.source "Robot.java"


# static fields
.field public static final MOUSE_LEFT_BTN:I = 0x1

.field public static final MOUSE_MIDDLE_BTN:I = 0x4

.field public static final MOUSE_RIGHT_BTN:I = 0x2

.field private static final allPermission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/security/AllPermission;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/Robot;->allPermission:Ljava/security/Permission;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/sun/glass/ui/Robot;->allPermission:Ljava/security/Permission;

    invoke-static {v1}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 53
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Robot;->_create()V

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract _create()V
.end method

.method protected abstract _destroy()V
.end method

.method protected abstract _getMouseX()I
.end method

.method protected abstract _getMouseY()I
.end method

.method protected abstract _getPixelColor(II)I
.end method

.method protected abstract _getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;
.end method

.method protected abstract _keyPress(I)V
.end method

.method protected abstract _keyRelease(I)V
.end method

.method protected abstract _mouseMove(II)V
.end method

.method protected abstract _mousePress(I)V
.end method

.method protected abstract _mouseRelease(I)V
.end method

.method protected abstract _mouseWheel(I)V
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 59
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Robot;->_destroy()V

    .line 60
    return-void
.end method

.method public getMouseX()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 135
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Robot;->_getMouseX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Robot;
    return v0
.end method

.method public getMouseY()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 141
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Robot;->_getMouseY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Robot;
    return v0
.end method

.method public getPixelColor(II)I
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 150
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Robot;->_getPixelColor(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Robot;
    return v0
.end method

.method public getScreenCapture(IIII)Lcom/sun/glass/ui/Pixels;
    .locals 11

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/Robot;->getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/Robot;
    return-object v0
.end method

.method public getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;
    .locals 12

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "isHiDPI":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 172
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/glass/ui/Robot;->_getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/Robot;
    return-object v0
.end method

.method public keyPress(I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "code":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 69
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Robot;->_keyPress(I)V

    .line 70
    return-void
.end method

.method public keyRelease(I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "code":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 80
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Robot;->_keyRelease(I)V

    .line 81
    return-void
.end method

.method public mouseMove(II)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 92
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Robot;->_mouseMove(II)V

    .line 93
    return-void
.end method

.method public mousePress(I)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "buttons":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 107
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Robot;->_mousePress(I)V

    .line 108
    return-void
.end method

.method public mouseRelease(I)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "buttons":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 118
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Robot;->_mouseRelease(I)V

    .line 119
    return-void
.end method

.method public mouseWheel(I)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Robot;
    move v1, p1

    .local v1, "wheelAmt":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 129
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Robot;->_mouseWheel(I)V

    .line 130
    return-void
.end method
