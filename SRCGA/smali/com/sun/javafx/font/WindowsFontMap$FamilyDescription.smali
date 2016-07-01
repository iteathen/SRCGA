.class Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;
.super Ljava/lang/Object;
.source "WindowsFontMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/WindowsFontMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FamilyDescription"
.end annotation


# instance fields
.field public boldFileName:Ljava/lang/String;

.field public boldFullName:Ljava/lang/String;

.field public boldItalicFileName:Ljava/lang/String;

.field public boldItalicFullName:Ljava/lang/String;

.field public familyName:Ljava/lang/String;

.field public italicFileName:Ljava/lang/String;

.field public italicFullName:Ljava/lang/String;

.field public plainFileName:Ljava/lang/String;

.field public plainFullName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
