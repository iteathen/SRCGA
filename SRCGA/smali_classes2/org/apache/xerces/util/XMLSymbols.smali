.class public Lorg/apache/xerces/util/XMLSymbols;
.super Ljava/lang/Object;
.source "XMLSymbols.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String;

.field public static final PREFIX_XML:Ljava/lang/String;

.field public static final PREFIX_XMLNS:Ljava/lang/String;

.field public static final fANYSymbol:Ljava/lang/String;

.field public static final fCDATASymbol:Ljava/lang/String;

.field public static final fENTITIESSymbol:Ljava/lang/String;

.field public static final fENTITYSymbol:Ljava/lang/String;

.field public static final fENUMERATIONSymbol:Ljava/lang/String;

.field public static final fFIXEDSymbol:Ljava/lang/String;

.field public static final fIDREFSSymbol:Ljava/lang/String;

.field public static final fIDREFSymbol:Ljava/lang/String;

.field public static final fIDSymbol:Ljava/lang/String;

.field public static final fIMPLIEDSymbol:Ljava/lang/String;

.field public static final fNMTOKENSSymbol:Ljava/lang/String;

.field public static final fNMTOKENSymbol:Ljava/lang/String;

.field public static final fNOTATIONSymbol:Ljava/lang/String;

.field public static final fREQUIREDSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 89
    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    .line 94
    const-string v0, "xmlns"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 101
    const-string v0, "ANY"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fANYSymbol:Ljava/lang/String;

    .line 104
    const-string v0, "CDATA"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 107
    const-string v0, "ID"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    .line 110
    const-string v0, "IDREF"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    .line 113
    const-string v0, "IDREFS"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    .line 116
    const-string v0, "ENTITY"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    .line 119
    const-string v0, "ENTITIES"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    .line 122
    const-string v0, "NMTOKEN"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    .line 125
    const-string v0, "NMTOKENS"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    .line 128
    const-string v0, "NOTATION"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    .line 131
    const-string v0, "ENUMERATION"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    .line 134
    const-string v0, "#IMPLIED"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fIMPLIEDSymbol:Ljava/lang/String;

    .line 137
    const-string v0, "#REQUIRED"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fREQUIREDSymbol:Ljava/lang/String;

    .line 140
    const-string v0, "#FIXED"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/util/XMLSymbols;->fFIXEDSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLSymbols;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
