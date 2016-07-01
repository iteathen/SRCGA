.class public final Lcom/sun/javafx/cursor/StandardCursorFrame;
.super Lcom/sun/javafx/cursor/CursorFrame;
.source "StandardCursorFrame.java"


# instance fields
.field private cursorType:Lcom/sun/javafx/cursor/CursorType;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/cursor/CursorType;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/StandardCursorFrame;
    move-object v1, p1

    .local v1, "cursorType":Lcom/sun/javafx/cursor/CursorType;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/cursor/CursorFrame;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/cursor/StandardCursorFrame;->cursorType:Lcom/sun/javafx/cursor/CursorType;

    .line 33
    return-void
.end method


# virtual methods
.method public getCursorType()Lcom/sun/javafx/cursor/CursorType;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/StandardCursorFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/cursor/StandardCursorFrame;->cursorType:Lcom/sun/javafx/cursor/CursorType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/StandardCursorFrame;
    return-object v0
.end method
