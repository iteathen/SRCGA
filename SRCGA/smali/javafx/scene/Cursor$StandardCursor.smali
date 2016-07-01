.class final Ljavafx/scene/Cursor$StandardCursor;
.super Ljavafx/scene/Cursor;
.source "Cursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardCursor"
.end annotation


# instance fields
.field private final singleFrame:Lcom/sun/javafx/cursor/CursorFrame;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V
    .locals 8

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Cursor$StandardCursor;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lcom/sun/javafx/cursor/CursorType;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Cursor;-><init>(Ljava/lang/String;)V

    .line 284
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/cursor/StandardCursorFrame;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/cursor/StandardCursorFrame;-><init>(Lcom/sun/javafx/cursor/CursorType;)V

    iput-object v4, v3, Ljavafx/scene/Cursor$StandardCursor;->singleFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 285
    return-void
.end method


# virtual methods
.method getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Cursor$StandardCursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Cursor$StandardCursor;->singleFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Cursor$StandardCursor;
    return-object v0
.end method
