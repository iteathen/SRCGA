.class public Lcom/sun/prism/impl/ps/CachingRoundRectRep;
.super Lcom/sun/prism/impl/ps/CachingShapeRep;
.source "CachingRoundRectRep.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingRoundRectRep;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/ps/CachingShapeRep;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method createState()Lcom/sun/prism/impl/ps/CachingShapeRepState;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingRoundRectRep;
    new-instance v1, Lcom/sun/prism/impl/ps/CachingRoundRectRepState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingRoundRectRepState;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingRoundRectRep;
    return-object v0
.end method
