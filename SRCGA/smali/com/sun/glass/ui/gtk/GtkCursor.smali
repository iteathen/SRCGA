.class final Lcom/sun/glass/ui/gtk/GtkCursor;
.super Lcom/sun/glass/ui/Cursor;
.source "GtkCursor.java"


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkCursor;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 35
    return-void
.end method

.method constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Cursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    .line 39
    return-void
.end method

.method static native _getBestSize(II)Lcom/sun/glass/ui/Size;
.end method


# virtual methods
.method protected native _createCursor(IILcom/sun/glass/ui/Pixels;)J
.end method
