#include "am_openat.h"
#include "iot_zbar.h"

/**������ά�룬���ؾ��handle
*@param		width:		����ͼƬ�Ŀ���
*@param		height:		����ͼƬ�ĸ߶�
*@param		data:		����ͼƬ������
*@param		size:		����ͼƬ���ݴ�С
*@return	��ȡ���handle�� ������0��ʾ�����ɹ�
*           
**/
int iot_zbar_scannerOpen(int width, int height, int size, unsigned char *data)
{
    return IVTBL(zbar_scannerOpen)(width, height, size, data);
}


/**��ȡ������ά�������
*@param		handle:		���,��iot_zbar_scannerOpen����
*@param		len:		��ȡ���ݵĳ���
*@return	��ȡ�����ݵ�ַ
**/
char * iot_zbar_getData(int handle, int *len)
{
    return IVTBL(zbar_getData)(handle, len);
}

/**�鿴�Ƿ�����һ������
*@param		handle:		���,��iot_zbar_scannerOpen����
*@return	TRUE:   ������һ������
*			FALSE:  û����һ������
**/
BOOL iot_zbar_findNextData(int handle)
{
    return IVTBL(zbar_findNextData)(handle);
}

/**�ͷž��
*@param		handle:		���,��iot_zbar_scannerOpen����
*@return    void	
**/
void iot_zbar_scannerClose(int handle)
{
    IVTBL(zbar_scannerClose)(handle);
}
