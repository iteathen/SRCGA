.class public Lcom/sun/prism/impl/ps/CachingEllipseRep;
.super Lcom/sun/prism/impl/ps/CachingShapeRep;
.source "CachingEllipseRep.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingEllipseRep;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/ps/CachingShapeRep;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method createState()Lcom/sun/prism/impl/ps/CachingShapeRepState;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingEllipseRep;
    new-instance v1, Lcom/sun/prism/impl/ps/CachingEllipseRepState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingEllipseRepState;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingEllipseRep;
    return-object v0
.end method
