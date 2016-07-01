.class public abstract Lcom/sun/javafx/cursor/CursorFrame;
.super Ljava/lang/Object;
.source "CursorFrame.java"


# instance fields
.field private firstPlatformCursor:Ljava/lang/Object;

.field private firstPlatformCursorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private otherPlatformCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCursorType()Lcom/sun/javafx/cursor/CursorType;
.end method

.method public getPlatformCursor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v1, p1

    .local v1, "platformCursorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursorClass:Ljava/lang/Class;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 46
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursor:Ljava/lang/Object;

    move-object v0, v2

    .line 53
    .end local v0    # "this":Lcom/sun/javafx/cursor/CursorFrame;
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "this":Lcom/sun/javafx/cursor/CursorFrame;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/cursor/CursorFrame;->otherPlatformCursors:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/cursor/CursorFrame;->otherPlatformCursors:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 53
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public setPlatforCursor(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v1, p1

    .local v1, "platformCursorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "platformCursor":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursorClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursorClass:Ljava/lang/Class;

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursorClass:Ljava/lang/Class;

    .line 63
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/cursor/CursorFrame;->firstPlatformCursor:Ljava/lang/Object;

    .line 64
    .line 72
    :goto_0
    return-void

    .line 67
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/cursor/CursorFrame;->otherPlatformCursors:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 68
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/cursor/CursorFrame;->otherPlatformCursors:Ljava/util/Map;

    .line 71
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/cursor/CursorFrame;->otherPlatformCursors:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    goto :goto_0
.end method
