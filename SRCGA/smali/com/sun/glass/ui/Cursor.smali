.class public abstract Lcom/sun/glass/ui/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# static fields
.field public static final CURSOR_CLOSED_HAND:I = 0x4

.field public static final CURSOR_CROSSHAIR:I = 0x3

.field public static final CURSOR_CUSTOM:I = 0x0

.field public static final CURSOR_DEFAULT:I = 0x1

.field public static final CURSOR_DISAPPEAR:I = 0xd

.field public static final CURSOR_MOVE:I = 0x13

.field public static final CURSOR_NONE:I = -0x1

.field public static final CURSOR_OPEN_HAND:I = 0x5

.field public static final CURSOR_POINTING_HAND:I = 0x6

.field public static final CURSOR_RESIZE_DOWN:I = 0xa

.field public static final CURSOR_RESIZE_LEFT:I = 0x7

.field public static final CURSOR_RESIZE_LEFTRIGHT:I = 0xb

.field public static final CURSOR_RESIZE_NORTHEAST:I = 0x12

.field public static final CURSOR_RESIZE_NORTHWEST:I = 0x11

.field public static final CURSOR_RESIZE_RIGHT:I = 0x8

.field public static final CURSOR_RESIZE_SOUTHEAST:I = 0x10

.field public static final CURSOR_RESIZE_SOUTHWEST:I = 0xf

.field public static final CURSOR_RESIZE_UP:I = 0x9

.field public static final CURSOR_RESIZE_UPDOWN:I = 0xc

.field public static final CURSOR_TEXT:I = 0x2

.field public static final CURSOR_WAIT:I = 0xe


# instance fields
.field private ptr:J

.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Cursor;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 58
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/Cursor;->type:I

    .line 59
    return-void
.end method

.method protected constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .locals 10

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Cursor;
    move v2, p1

    .local v2, "x":I
    move v3, p2

    .local v3, "y":I
    move-object v4, p3

    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 63
    move-object v5, v1

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/glass/ui/Cursor;->_createCursor(IILcom/sun/glass/ui/Pixels;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/glass/ui/Cursor;->ptr:J

    .line 64
    return-void
.end method

.method public static getBestSize(II)Lcom/sun/glass/ui/Size;
    .locals 5

    .prologue
    .line 115
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 116
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    move v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Application;->staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "width":I
    return-object v0
.end method

.method public static setVisible(Z)V
    .locals 3

    .prologue
    .line 107
    move v0, p0

    .local v0, "visible":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 108
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->staticCursor_setVisible(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method protected abstract _createCursor(IILcom/sun/glass/ui/Pixels;)J
.end method

.method protected final getNativeCursor()J
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Cursor;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 73
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/Cursor;->ptr:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Cursor;
    return-wide v0
.end method

.method public final getType()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Cursor;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 68
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Cursor;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Cursor;
    return v0
.end method
