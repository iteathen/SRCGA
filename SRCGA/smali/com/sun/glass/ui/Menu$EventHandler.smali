.class public Lcom/sun/glass/ui/Menu$EventHandler;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Menu$EventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMenuClosed(Lcom/sun/glass/ui/Menu;J)V
    .locals 0
    .param p1, "menu"    # Lcom/sun/glass/ui/Menu;
    .param p2, "time"    # J

    .prologue
    .line 44
    return-void
.end method

.method public handleMenuOpening(Lcom/sun/glass/ui/Menu;J)V
    .locals 0
    .param p1, "menu"    # Lcom/sun/glass/ui/Menu;
    .param p2, "time"    # J

    .prologue
    .line 40
    return-void
.end method
